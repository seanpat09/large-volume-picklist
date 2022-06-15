import { api, LightningElement, wire } from 'lwc';
import getChoices from '@salesforce/apex/LargeVolumePicklistController.getChoices';

export default class LargeVolumePicklist extends LightningElement {
    @api
    label

    @api
    placeholder

    @api
    choicesFile

    @api
    value

    options

    @wire(getChoices, { filename: '$choicesFile' })
    buildChoices({ error, data }){
        if (data) {
            this.options = data.map((x) => {
                return { 
                    label: x.label,
                    value: x.value,
                }
            })
        } else if(error) {
            console.log(error);
        }
    }

    handleChange(event) {
        this.value = event.detail.value;
    }
}