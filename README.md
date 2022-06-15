# Large Volume Picklists

There's a limit to how many values you can have in picklist. However, there might be times if you want to enforce selections in a text field while also have a large volume of choices. This Lightning Web Component is one you can add to a Flow that you can configure the choices with a CSV stored in a static resource. From there, you can save the values from selected in the component with your Flow.

## Usage

### Prepare your choices
Create a CSV with your labels and choices. The first column should be the labels and the second column should be the value you want stored in the database (this is similar to the Label vs. API Value paradigm of picklists). Make sure to include a header row in your CSV as the Apex code removes the first row. Upload this CSV as a static resource. See the static resource `countryChoices` for an example.

### Configure your flow

When you add the component to Flow, you have some configuration options:

* Choices Static Resource Name - This is the name of the static resource that you uploaded with your choices
* Label - This is the label that will appear on the input field
* Placeholder - This is the placeholder text that will appear in the input field

![Flow Configuration displaying the following inputs. "API Name" with the value "CountryPicklist" as one word. "Choices Static Resource Name" with the value "countryChoices". "Label" with the value "Country". "Placeholder" with the value "Select a Country"](/assets/configuration.png)

Here's how the component will appear in a screen flow
![Component displaying an input field with the label "Country" and placeholder text "Select a Country](/assets/demo.png)

A flow named "Account Country Updater" is included in this repo as a demo.

## Installation and Demo

If you'd like to try this demo, spin up a new scratch org and it will create an org that has the demo Flow installed as a quick action on the Account layout. Create a new Account and the Update Country quick action will allow you to try the component. When you hit save, it will update the BillingCountry of the account with your selection.

If you just want to install the component, all you need to push to your org is the Classes and LWC folders.

## TODO
Write tests