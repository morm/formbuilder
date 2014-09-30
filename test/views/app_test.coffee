Formbuilder = window.Formbuilder

describe 'Formbuilder', ->
    beforeEach ->
        @view = new Formbuilder({selector: '.fb-main', formData:{}, bootstrapData:[]})

    it 'should exist', ->
        expect(@view).to.be.ok
