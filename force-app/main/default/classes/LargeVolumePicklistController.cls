public with sharing class LargeVolumePicklistController {
    @AuraEnabled(cacheable=true)
    public static List<Map<String, String>> getChoices(String filename) {
        StaticResource resource = [SELECT Body FROM StaticResource WHERE Name = :filename LIMIT 1];
        List<Map<String, String>> choices = new List<Map<String, String>>();

        List<String> rows = resource.Body.toString().split('\n');
        rows.remove(0);

        for(String row : rows) {
            List<String> rowData = row.split(',');
            choices.add(
                new Map<String, String> {
                    'label' => rowData[0],
                    'value' => rowData[1]
                }
            );
        }

        return choices;
    }
}
