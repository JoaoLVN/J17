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

  toggle() {
    let editor
      if (editor = atom.workspace.getActiveTextEditor()) {

        let text = editor.getText().split('\n');
        let binary="";

        for(let i=0;i<text.length;i++){
          let newline="";
          let line = text[i];
          line = line.split(' ');
          for(let k=0;k<instructionset.length;k++)
            if(instructionset[k].instruction===line[0]){
              newline+=instructionset[k].binary ;
              break;
            }
          let operands=line[1].split(',');
          for (let j = 0;j<operands.length;j++){
            let operand=operands[j];
            let old=operand;
            operand=operand.replace('%','');
            let flag = (old===operand)? 0 : 1;
            old=operand;
            operand=operand.replace('.','');
            let im = (old===operand)? 3 : 21;
              if(!isNaN(parseFloat(operand)) && isFinite(operand)){

                let bin=(operand >>> 0).toString(2);
                bin= bin.substr(bin.length-im, bin.length);
                while(bin.length<im){
                  bin="0"+bin;
                }
                newline+= flag+bin ;
              }else{
                newline+=operand;
              }

          }
          while(newline.length<32)
            newline+="0";
          binary+=newline+'\n';
        }
        editor.setText(binary)
      }
    }

};
