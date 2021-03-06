H2O.CreateFrameInput = (_, _go) ->
  _key = signal ''
  _rows = signal 10000
  _columns = signal 100
  _seed = signal 7595850248774471522
  _randomize = signal yes
  _value = signal 0
  _realRange = signal 100
  _categoricalFraction = signal 0.1
  _factors = signal 5
  _integerFraction = signal 0.5
  _binaryFraction = signal 0.1
  _binaryOnesFraction = signal 0.02
  _integerRange = signal 1
  _missingFraction = signal 0.01
  _responseFactors = signal 2
  _hasResponse = signal no

  createFrame = ->
    opts =
      dest: _key()
      rows: _rows()
      cols: _columns()
      seed: _seed()
      randomize: _randomize()
      value: _value()
      real_range: _realRange()
      categorical_fraction: _categoricalFraction()
      factors: _factors()
      integer_fraction: _integerFraction()
      binary_fraction: _binaryFraction()
      binary_ones_fraction: _binaryOnesFraction()
      integer_range: _integerRange()
      missing_fraction: _missingFraction()
      response_factors: _responseFactors()
      has_response: _hasResponse()

    _.insertAndExecuteCell 'cs', "createFrame #{stringify opts}"

  defer _go

  key: _key
  rows: _rows
  columns: _columns
  seed: _seed
  randomize: _randomize
  value: _value
  realRange: _realRange
  categoricalFraction: _categoricalFraction
  factors: _factors
  integerFraction: _integerFraction
  binaryFraction: _binaryFraction
  binaryOnesFraction: _binaryOnesFraction
  integerRange: _integerRange
  missingFraction: _missingFraction
  responseFactors: _responseFactors
  hasResponse: _hasResponse
  createFrame: createFrame
  template: 'flow-create-frame-input'
        
        
