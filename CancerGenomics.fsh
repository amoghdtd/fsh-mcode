Profile:    CancerGeneticVariant
Parent:     Observation     // based on US Core Observation Result Profile
Id:         CancerGeneticVariant
Title:      "Cancer Genetic Variant"
Description:    "Records an alteration in the most common DNA nucleotide sequence. The term variant can be used to describe an alteration that may be benign, pathogenic, or of unknown significance. The term variant is increasingly being used in place of the term mutation."
* status, code, subject, effective[x], valueCodeableConcept, method MS
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* identifier 0..*
* identifier contains
    AccessionIdentifier 0..1 MS and
    FillerOrderNumber 0..1 MS and
    PlacerOrderNumber 0..1 MS
* code = LNC#69548-6 "Genetic variant assessment"
* component contains
    GeneStudied 0..* MS and
    VariationCode 0..* MS and
    GenomicDNAChange 0..1 MS and
    GenomicSourceClass 0..1 MS and
    AminoAcidChange 0..1 MS and
    AminoAcidChangeType 0..1 MS and
    CytogeneticLocation 0..* MS and
    CytogeneticNomenclature 0..1 MS
* component[0] ^slicing.discriminator.type = #pattern
* component[0] ^slicing.discriminator.path = "code"
* component[0] ^slicing.ordered = false
* component[0] ^slicing.rules = #open
* component[0] ^slicing.description = "Slice based on the component.code pattern"
* component[GeneStudied] ^short = "Gene studied [ID]"
* component[GeneStudied].code = LOINC#48018-6
* component[GeneStudied].value[x] only CodeableConcept
* component[GeneStudied].valueCodeableConcept 1..1
* component[GeneStudied].valueCodeableConcept from http://www.genenames.org/geneId (extensible)
* component[VariationCode] ^short = "Discrete genetic variant"
* component[VariationCode].code = LOINC#81252-9
* component[VariationCode].value[x] only CodeableConcept
* component[VariationCode].valueCodeableConcept 1..1
* component[VariationCode].valueCodeableConcept from http://www.ncbi.nlm.nih.gov/clinvar (preferred)
* component[GenomicDNAChange] ^short = "Genomic DNA change (gHGVS)"
* component[GenomicDNAChange].code = LOINC#81290-9
* component[GenomicDNAChange].value[x] only CodeableConcept
* component[GenomicDNAChange].valueCodeableConcept 1..1
* component[GenomicDNAChange].valueCodeableConcept from http://varnomen.hgvs.org (required)
* component[GenomicSourceClass] ^short = "Genomic source class [Type]"
* component[GenomicSourceClass].code = LOINC#48002-0
* component[GenomicSourceClass].value[x] only CodeableConcept
* component[GenomicSourceClass].valueCodeableConcept 1..1
* component[GenomicSourceClass].valueCodeableConcept from https://fhir.loinc.org/ValueSet/LL378-1 (required)
* component[AminoAcidChange] ^short = "Amino acid change (pHGVS)"
* component[AminoAcidChange].code = LOINC#48005-3
* component[AminoAcidChange].value[x] only CodeableConcept
* component[AminoAcidChange].valueCodeableConcept 1..1
* component[AminoAcidChange].valueCodeableConcept from http://varnomen.hgvs.org (required)
* component[AminoAcidChangeType] ^short = "Amino acid change [Type]"
* component[AminoAcidChangeType].code = LOINC#48006-1
* component[AminoAcidChangeType].value[x] only CodeableConcept
* component[AminoAcidChangeType].valueCodeableConcept 1..1
* component[AminoAcidChangeType].valueCodeableConcept from https://fhir.loinc.org/ValueSet/LL380-7 (required)
* component[CytogeneticLocation] ^short = "Cytogenetic (chromosome) location"
* component[CytogeneticLocation].code = LOINC#48001-2
* component[CytogeneticLocation].value[x] 1..1 // CG Reporting IG does not constrain the CytogeneticLocation value type.
* component[CytogeneticNomenclature] ^short = "Variant ISCN"
* component[CytogeneticNomenclature].code = LOINC#81291-7
* component[CytogeneticNomenclature].value[x] 1..1 // CG Reporting IG does not constrain the CytogeneticLocation value type.

Profile:    AccessionIdentifier
Parent:     Identifier
Id:         AccessionIdentifier
Title:      "Accession Identifier"
Description:    "Identifier assigned by the lab"
* Type 1..1
* Type = IDTYPE#ACSN

Profile:    FillerOrderIdentifier
Parent:     Identifier
Id:         FillerOrderIdentifier
Title:      "Filler Order Identifier"
* Type 1..1
* Type = UNK0#FILL

Profile:    PlacerOrderIdentifier
Parent:     Identifier
Id:         PlacerOrderIdentifier
Title:      "Placer Order Identifier"
* Type 1..1
* Type = UNK0#PLAC

Profile:        TumorMarkerTest
Parent:         Observation     // based on US Core Observation Result Profile
Id:             TumorMarker
Title:          "Tumor Marker"
Description:    "The result of a tumor marker test. Tumor marker tests are generally used to guide cancer treatment decisions and monitor treatment, as well as to predict the chance of recovery and cancer recurrence. A tumor marker is a substance found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (noncancer) conditions. Most tumor markers are made by both normal cells and cancer cells, but they are made in larger amounts by cancer cells. A tumor marker may help to diagnose cancer, plan treatment, or find out how well treatment is working or if cancer has come back. Examples of tumor markers include CA-125 (in ovarian cancer), CA 15-3 (in breast cancer), CEA (in colon cancer), and PSA (in prostate cancer). Tumor markers differ from genetic markers in that they are measured at the levels of the protein and substance post-RNA protein synthesis. (Definition adapted from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/tumor-marker-test) and [Cancer.Net](https://www.cancer.net/navigating-cancer-care/diagnosing-cancer/tests-and-procedures/tumor-marker-tests)).

Implementation note: The data value for TumorMarkerTest has cardinality is 0..1 (required if known) because when the test result is indeterminate, no quantitative data value will be reported. Instead, the reason for the null value will be reported in the DataAbsentReason field."
* status, code, subject, effective[x], valueCodeableConcept MS
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* identifier 0..*
* identifier contains
    AccessionIdentifier 0..1 MS and
    FillerOrderNumber 0..1 MS and
    PlacerOrderNumber 0..1 MS
* component 0..0
* interpretation 0..1
* subject 1..1
* basedOn only Reference(ServiceRequest | MedicationRequest)
* partOf only Reference(MedicationAdministration | MedicationStatement | Procedure)
* code from TumorMarkerTestVS (extensible)
* subject only Reference(CancerPatient)
* focus only Reference(PrimaryCancerCondition | SecondaryCancerCondition | Tumor)
* effective[x] only dateTime or Period
* performer only Reference(USCorePractitioner)
* value[x] 1..1     // there is no data type constraint on the value
* derivedFrom only 	Reference(USCoreDocumentReference | Media | QuestionnaireResponse | Observation | ImagingStudy | MolecularSequence)

// ****** TO BE ADDED: CancerGenomicsReport ******
/*
Profile:    CancerGenomicsReport
Parent:     DiagnosticReport     // based on US Core Diagnostic Report Profile
Id:         CancerGenomicsReport
Title:      "Cancer Genomics Report"
Description:    "Genetic analysis summary report. The report may include one or more tests, with two distinct test types. The first type is a targeted mutation test, where a specific mutation on a specific gene is tested for. The result is either positive or negative for that mutation. The second type is a more general test for variants. This type of test returns the identity of variants found in a certain region of the genome.

The identity of non-genomic laboratory tests is typically represented by a LOINC code. However, many genetic tests and panels do not have LOINC codes, although some might have an identifier in NCBI Genetic Testing Registry (GTR), a central location for voluntary submission of genetic test information by providers. To identify the diagnostic report, the name of the report must be in the text sub-field of the code structure. If there is a coded identifier from GTR, LOINC, or other source, then it should be included into the the code sub-field of the code structure. If there is no suitable code, the code can be omitted."
*/
