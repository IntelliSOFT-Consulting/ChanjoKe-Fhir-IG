Alias: $kenya-counties-extension = http://example.org/StructureDefinition/kenya-counties-extension
Alias: $kenya-administrative-gender-extension = http://example.org/StructureDefinition/kenya-administrative-gender-extension


Profile: KenyanPractitioner
Parent: Practitioner
Description: "Profile for a Kenyan Practitioner"
* extension contains 
    $kenya-counties-extension named location 0..1 and
    $kenya-administrative-gender-extension named kenyaAdministrativeGenderExtension 0..1
* identifier 0..* MS
* identifier.system 1..1
* identifier.system ^short = "The namespace for the identifier value e.g a Registry URL"
* identifier.value 1..1
* identifier.value ^short = "The value that is unique from the namespace"
* name MS
* name.given 1..1
* name.family 1..1
* telecom 0..* 
* telecom.system 1..1
* telecom.value 1..1
// * gender from kenyaAdministrativeGenderVS 
// * gender ^short = "male | female |"
* birthDate MS
* extension[kenya-administrative-gender-extension].valueCode from kenyaAdministrativeGenderVS
* extension[kenya-administrative-gender-extension] ^short = "male | female |"
