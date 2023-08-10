cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  hormone-replacement-drugs-oestroge---primary:
    run: hormone-replacement-drugs-oestroge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  hormone-replacement-drugs-progesterone---primary:
    run: hormone-replacement-drugs-progesterone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-oestroge---primary/output
  hormone-replacement-drugs-projuven---primary:
    run: hormone-replacement-drugs-projuven---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-progesterone---primary/output
  hormone-replacement-drugs-015mg---primary:
    run: hormone-replacement-drugs-015mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-projuven---primary/output
  hormone-replacement-drugs-20microgram---primary:
    run: hormone-replacement-drugs-20microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-015mg---primary/output
  hormone-replacement-drugs-femtab---primary:
    run: hormone-replacement-drugs-femtab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-20microgram---primary/output
  hormone-replacement-drugs-hemihydrate---primary:
    run: hormone-replacement-drugs-hemihydrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-femtab---primary/output
  hormone-replacement-drugs-100mg---primary:
    run: hormone-replacement-drugs-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-hemihydrate---primary/output
  hormone-replacement-drugs-sequi---primary:
    run: hormone-replacement-drugs-sequi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-100mg---primary/output
  hormone-replacement-drugs-nuvelle---primary:
    run: hormone-replacement-drugs-nuvelle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-sequi---primary/output
  hormone-replacement-drugs-ethinylestradiol---primary:
    run: hormone-replacement-drugs-ethinylestradiol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-nuvelle---primary/output
  hormone-replacement-drugs-125mg---primary:
    run: hormone-replacement-drugs-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-ethinylestradiol---primary/output
  hormone-replacement-drugs-implant---primary:
    run: hormone-replacement-drugs-implant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-125mg---primary/output
  continuous-hormone-replacement-drugs---primary:
    run: continuous-hormone-replacement-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-implant---primary/output
  hormone-replacement-drugs-cycloprogynova---primary:
    run: hormone-replacement-drugs-cycloprogynova---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: continuous-hormone-replacement-drugs---primary/output
  hormone-replacement-drugs-80mcg---primary:
    run: hormone-replacement-drugs-80mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-cycloprogynova---primary/output
  hormone-replacement-drugs-100mcg---primary:
    run: hormone-replacement-drugs-100mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-80mcg---primary/output
  hormone-replacement-drugs-2microgram---primary:
    run: hormone-replacement-drugs-2microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-100mcg---primary/output
  hormone-replacement-drugs-benztrone---primary:
    run: hormone-replacement-drugs-benztrone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-2microgram---primary/output
  hormone-replacement-drugs-organon---primary:
    run: hormone-replacement-drugs-organon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-benztrone---primary/output
  hormone-replacement-drugs-climagest---primary:
    run: hormone-replacement-drugs-climagest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-organon---primary/output
  hormone-replacement-drugs-zumenon---primary:
    run: hormone-replacement-drugs-zumenon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-climagest---primary/output
  hormone-replacement-drugs-treatment---primary:
    run: hormone-replacement-drugs-treatment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-zumenon---primary/output
  hormone-replacement-drugs-patch---primary:
    run: hormone-replacement-drugs-patch---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-treatment---primary/output
  hormone-replacement-drugs-trisequens---primary:
    run: hormone-replacement-drugs-trisequens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-patch---primary/output
  hormone-replacement-drugs-forte---primary:
    run: hormone-replacement-drugs-forte---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-trisequens---primary/output
  hormone-replacement-drugs-estriol---primary:
    run: hormone-replacement-drugs-estriol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-forte---primary/output
  hormone-replacement-drugs-dienestrol---primary:
    run: hormone-replacement-drugs-dienestrol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-estriol---primary/output
  hormone-replacement-drugs-25mcg---primary:
    run: hormone-replacement-drugs-25mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-dienestrol---primary/output
  hormone-replacement-drugs-climaval---primary:
    run: hormone-replacement-drugs-climaval---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-25mcg---primary/output
  hormone-replacement-drugs-24hour---primary:
    run: hormone-replacement-drugs-24hour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-climaval---primary/output
  hormone-replacement-drugs-250microgram---primary:
    run: hormone-replacement-drugs-250microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-24hour---primary/output
  hormone-replacement-drugs-ovestin---primary:
    run: hormone-replacement-drugs-ovestin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-250microgram---primary/output
  hormone-replacement-drugs-femapak---primary:
    run: hormone-replacement-drugs-femapak---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-ovestin---primary/output
  hormone-replacement-drugs-fematrix---primary:
    run: hormone-replacement-drugs-fematrix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-femapak---primary/output
  hormone-replacement-drugs-adgyn---primary:
    run: hormone-replacement-drugs-adgyn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-fematrix---primary/output
  hormone-replacement-drugs-40mcg---primary:
    run: hormone-replacement-drugs-40mcg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-adgyn---primary/output
  premique-hormone-replacement-drugs---primary:
    run: premique-hormone-replacement-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-40mcg---primary/output
  hormone-replacement-drugs-ellesteduet---primary:
    run: hormone-replacement-drugs-ellesteduet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: premique-hormone-replacement-drugs---primary/output
  hormone-replacement-drugs-indivina---primary:
    run: hormone-replacement-drugs-indivina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-ellesteduet---primary/output
  hormone-replacement-drugs-24hrs---primary:
    run: hormone-replacement-drugs-24hrs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-indivina---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: hormone-replacement-drugs-24hrs---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
