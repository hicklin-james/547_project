'use strict'

module = angular.module('547ProjectApp')

class ViolinCtrl
  @$inject: ['$scope', '$interval', 'DiseaseAttribute', 'Util', '_']
  constructor: (@$scope, @$interval, @DiseaseAttribute, @Util, @_) ->

    selectedAttributes = @$scope.$parent.$parent.ctrl.selectedAttributes

    @$scope.ctrl = @

    @convertAttributesToUsableViolinData(selectedAttributes)

    @$scope.$on "chartDataChanged", (event, nv) =>
      @convertAttributesToUsableViolinData(nv)

  convertAttributesToUsableViolinData: (attrs) ->
    @violinData =  @_.map attrs, (attr) ->
      color: if attr.deltaDirection then "lightgreen" else "#ffbfbb"
      data: attr.data

module.controller 'ViolinCtrl', ViolinCtrl