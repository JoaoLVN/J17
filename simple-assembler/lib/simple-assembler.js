'use babel';

import SimpleAssemblerView from './simple-assembler-view';
import { CompositeDisposable } from 'atom';
var instructionset = require('./instructionset.json');
export default {

  simpleAssemblerView: null,
  modalPanel: null,
  subscriptions: null,

  activate(state) {
    this.simpleAssemblerView = new SimpleAssemblerView(state.simpleAssemblerViewState);
    this.modalPanel = atom.workspace.addModalPanel({
      item: this.simpleAssemblerView.getElement(),
      visible: false
    });

    // Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    this.subscriptions = new CompositeDisposable();

    // Register command that toggles this view
    this.subscriptions.add(atom.commands.add('atom-workspace', {
      'simple-assembler:toggle': () => this.toggle()
    }));
  },

  deactivate() {
    this.modalPanel.destroy();
    this.subscriptions.dispose();
    this.simpleAssemblerView.destroy();
  },

  serialize() {
    return {
      simpleAssemblerViewState: this.simpleAssemblerView.serialize()
    };
  },

  parseinstruction(source){

    var text = source.toUpperCase().split('\n');
    var binary="";
    for(var i=0;i<text.length;i++){
      var newline="";
      var line = text[i];
      line = line.trim().split(' ');

      var hasargs=false;
      var existe=false;
      var islabel=false;
      if(line[0].charAt(0)==='.' || line[0]==""){
        hasargs=false;
        islabel=true;
      }else{
        for(var k=0;k<instructionset.length;k++){
          if(line[0]===instructionset[k].instruction){
            newline+=instructionset[k].binary ;
            hasargs = !instructionset[k].noargs;
            existe=true;
            break;
          }
        }
        if(!existe){
          atom.notifications.addWarning("Instrução inválida: "+line[0]+"("+(i+1)+")");
          return false;
        }
      }

      if(hasargs){

        var operands=line[1].split(',');
        for (var j = 0;j<operands.length;j++){
          var operand=operands[j];
          var flag=0;
          var im=3;

          if(operand.indexOf(".")!== -1){
            im=21;
            for(var ln=0;ln<text.length;ln++){
              if(i!=ln && text[ln].indexOf(operand)!== -1){
                operand=ln-i;
              }
            }
          }else if(operand.indexOf("%") !== -1){
            operand=operand.replace('%','');
            flag = 1;
            operand=operand.replace('R','');

          }else if(operand.indexOf("R") !== -1){
            operand=operand.replace('R','');
            operand=operand.replace('%','');
          }else
            im=21;


            if(!isNaN(parseFloat(operand)) && isFinite(operand)){

              var bin=(operand >>> 0).toString(2);
              if(operand<0 && im==21)
                bin= bin.substr(bin.length-21, bin.length);
              while(bin.length<im){
                bin="0"+bin;
              }
              newline+= flag+bin ;
            }else{
              newline+=operand;
            }

        }
      }
      if(!islabel){
        while(newline.length<32)
          newline+="0";
        binary+=newline+'\n';
      }
    }
    return binary;
  },
  toggle() {
    var editor;
      if (editor = atom.workspace.getActiveTextEditor()) {

        try {
          var parsed=this.parseinstruction(editor.getText());
          var newEditor = atom.workspace.buildTextEditor();
          if(parsed){
            newEditor.setText(parsed);
            newEditor.saveAs(editor.getPath().split(".")[0] +".mif");
            atom.notifications.addSuccess("Código gerado com sucesso");
          }
        } catch (e) {
          atom.notifications.addWarning("Erro de Sintaxe: "+e);
        }

      }
    }

};
