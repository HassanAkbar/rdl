RDL.nowrap :Float

RDL.type :Float, :%, '(Integer x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :%, "Float")``'
RDL.type :Float, :%, '(Float x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :%, "Float")``'
RDL.type :Float, :%, '(Rational x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :%, "Float")``'
RDL.type :Float, :%, '(BigDecimal x {{ x != 0 && !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :%, "BigDecimal")``'

RDL.type :Float, :*, '(Integer) -> ``sing_or_type(trec, targs, :*, "Float")``'
RDL.type :Float, :*, '(Float) -> ``sing_or_type(trec, targs, :*, "Float")``'
RDL.type :Float, :*, '(Rational) -> ``sing_or_type(trec, targs, :*, "Float")``'
RDL.type :Float, :*, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :*, "BigDecimal")``'
RDL.type :Float, :*, '(Complex) -> ``sing_or_type(trec, targs, :*, "Complex")``'
RDL.pre(:Float, :*) { |x| if (x.real.is_a?(BigDecimal)||x.imaginary.is_a?(BigDecimal)) then (if x.real.is_a?(Float) then (x.real!=Float::INFINITY && !(x.real.nan?)) elsif(x.imaginary.is_a?(Float)) then x.imaginary!=Float::INFINITY && !(x.imaginary.nan?) else true end) && self!=Float::INFINITY && !(self.nan?) else true end} #can't have a complex with part BigDecimal, other part infinity/NAN

RDL.type :Float, :**, '(Integer) -> ``sing_or_type(trec, targs, :**, "Float")``'
RDL.type :Float, :**, '(Float) -> ``sing_or_type(trec, targs, :**, "%numeric")``'
RDL.type :Float, :**, '(Rational) -> ``sing_or_type(trec, targs, :**, "%numeric")``'
RDL.type :Float, :**, '(BigDecimal) -> ``sing_or_type(trec, targs, :**, "BigDecimal")``'
RDL.pre(:Float, :**) { |x| x!=BigDecimal::INFINITY && if self<0 then x<=-1||x>=0 else true end}
RDL.post(:Float, :**) { |x| x.real?}
RDL.type :Float, :**, '(Complex) -> ``sing_or_type(trec, targs, :**, "Complex")``'
RDL.pre(:Float, :**) { |x| x != 0 && if (x.real.is_a?(BigDecimal)||x.imaginary.is_a?(BigDecimal)) then (if x.real.is_a?(Float) then (x.real!=Float::INFINITY && !(x.real.nan?)) elsif(x.imaginary.is_a?(Float)) then x.imaginary!=Float::INFINITY && !(x.imaginary.nan?) else true end) && self!=Float::INFINITY && !(self.nan?) else true end}

RDL.type :Float, :+, '(Integer) -> ``sing_or_type(trec, targs, :+, "Float")``'
RDL.type :Float, :+, '(Float) -> ``sing_or_type(trec, targs, :+, "Float")``'
RDL.type :Float, :+, '(Rational) -> ``sing_or_type(trec, targs, :+, "Float")``'
RDL.type :Float, :+, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :+, "BigDecimal")``'
RDL.type :Float, :+, '(Complex) -> ``sing_or_type(trec, targs, :+, "Complex")``'
RDL.pre(:Float, :+) { |x| if x.real.is_a?(BigDecimal) then self!=Float::INFINITY && !(self.nan?) else true end}

RDL.type :Float, :-, '(Integer) -> ``sing_or_type(trec, targs, :-, "Float")``'
RDL.type :Float, :-, '(Float) -> ``sing_or_type(trec, targs, :-, "Float")``'
RDL.type :Float, :-, '(Rational) -> ``sing_or_type(trec, targs, :-, "Float")``'
RDL.type :Float, :-, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :-, "BigDecimal")``'
RDL.type :Float, :-, '(Complex) -> ``sing_or_type(trec, targs, :-, "Complex")``'
RDL.pre(:Float, :-) { |x| if x.real.is_a?(BigDecimal) then self!=Float::INFINITY && !(self.nan?) else true end}

RDL.type :Float, :-@, '() -> ``sing_or_type(trec, targs, :-@, "Float")``'

RDL.type :Float, :+@, '() -> ``sing_or_type(trec, targs, :+@, "Float")``'

RDL.type :Float, :/, '(Integer x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :/, "Float")``'
RDL.type :Float, :/, '(Float x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :/, "Float")``'
RDL.type :Float, :/, '(Rational x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :/, "Float")``'
RDL.type :Float, :/, '(BigDecimal x {{ x != 0 && !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :/, "BigDecimal")``'
RDL.type :Float, :/, '(Complex x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :/, "Complex")``'
RDL.pre(:Float, :/) { |x| if (x.real.is_a?(BigDecimal)||x.imaginary.is_a?(BigDecimal)) then (if x.real.is_a?(Float) then (x.real!=Float::INFINITY && !(x.real.nan?)) elsif(x.imaginary.is_a?(Float)) then x.imaginary!=Float::INFINITY && !(x.imaginary.nan?) else true end) && self!=Float::INFINITY && !(self.nan?) else true end && if (x.real.is_a?(Rational) && x.imaginary.is_a?(Float)) then !x.imaginary.nan? else true end}

RDL.type :Float, :<, '(Integer) -> ``sing_or_type(trec, targs, :<, "%bool")``'
RDL.type :Float, :<, '(Float) -> ``sing_or_type(trec, targs, :<, "%bool")``'
RDL.type :Float, :<, '(Rational) -> ``sing_or_type(trec, targs, :<, "%bool")``'
RDL.type :Float, :<, '(BigDecimal x {{ !self.nan? && !self.infinite? }}) -> ``sing_or_type(trec, targs, :<, "%bool")``'

RDL.type :Float, :<=, '(Integer) -> ``sing_or_type(trec, targs, :<=, "%bool")``'
RDL.type :Float, :<=, '(Float) -> ``sing_or_type(trec, targs, :<=, "%bool")``'
RDL.type :Float, :<=, '(Rational) -> ``sing_or_type(trec, targs, :<=, "%bool")``'
RDL.type :Float, :<=, '(BigDecimal x {{ !self.nan? && !self.infinite? }}) -> ``sing_or_type(trec, targs, :<=, "%bool")``'

RDL.type :Float, :<=>, '(Integer) -> ``sing_or_type(trec, targs, :<=>, "Integer")``'
RDL.post(:Float, :<=>) { |x| x == -1 || x==0 || x==1}
RDL.type :Float, :<=>, '(Float) -> ``sing_or_type(trec, targs, :<=>, "Integer")``'
RDL.post(:Float, :<=>) { |x| x == -1 || x==0 || x==1}
RDL.type :Float, :<=>, '(Rational) -> ``sing_or_type(trec, targs, :<=>, "Integer")``'
RDL.post(:Float, :<=>) { |x| x == -1 || x==0 || x==1}
RDL.type :Float, :<=>, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :<=>, "Integer")``'
RDL.post(:Float, :<=>) { |x| x == -1 || x==0 || x==1}

RDL.type :Float, :==, '(Object) -> ``sing_or_type(trec, targs, :==, "%bool")``'
RDL.pre(:Float, :==) { |x| if (x.is_a?(BigDecimal)) then (!self.nan? && self!=Float::INFINITY) else true end}

RDL.type :Float, :===, '(Object) -> ``sing_or_type(trec, targs, :===, "%bool")``'
RDL.pre(:Float, :===) { |x| if (x.is_a?(BigDecimal)) then (!self.nan? && self!=Float::INFINITY) else true end}

RDL.type :Float, :>, '(Integer) -> ``sing_or_type(trec, targs, :>, "%bool")``'
RDL.type :Float, :>, '(Float) -> ``sing_or_type(trec, targs, :>, "%bool")``'
RDL.type :Float, :>, '(Rational) -> ``sing_or_type(trec, targs, :>, "%bool")``'
RDL.type :Float, :>, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :>, "%bool")``'

RDL.type :Float, :>=, '(Integer) -> ``sing_or_type(trec, targs, :>=, "%bool")``'
RDL.type :Float, :>=, '(Float) -> ``sing_or_type(trec, targs, :>=, "%bool")``'
RDL.type :Float, :>=, '(Rational) -> ``sing_or_type(trec, targs, :>=, "%bool")``'
RDL.type :Float, :>=, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :>=, "%bool")``'

RDL.type :Float, :abs, '() -> Float r {{ r>=0 || (if self.nan? then r.nan? end) }}' ## TODO

RDL.type :Float, :abs2, '() -> Float r {{ r>=0 || (if self.nan? then r.nan? end) }}' ## TODO

RDL.type :Float, :div, '(Integer x {{ x != 0 && !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :div, "Integer")``'
RDL.type :Float, :div, '(Float x {{ x != 0 && !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :div, "Integer")``'
RDL.type :Float, :div, '(Rational x {{ x != 0 && !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :div, "Integer")``'
RDL.type :Float, :div, '(BigDecimal x {{ x != 0 && !x.nan? && !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :div, "Integer")``'

RDL.type :Float, :divmod, '(%real) -> [%real, %real]'
RDL.pre(:Float, :divmod) { |x| x != 0 && if x.is_a?(Float) then !x.nan? else true end && self!=Float::INFINITY && !self.nan?}

RDL.type :Float, :angle, '() -> ``sing_or_type(trec, targs, :angle, "%numeric")``'
RDL.post(:Float, :angle) { |r,x| r == 0 || r == Math::PI || r == Float::NAN}

RDL.type :Float, :arg, '() -> ``sing_or_type(trec, targs, :rg, "%numeric")``'
RDL.post(:Float, :arg) { |r,x| r == 0 || r == Math::PI || r == Float::NAN}

RDL.type :Float, :ceil, '() -> ``sing_or_type(trec, targs, :ceil, "Integer")``'
RDL.pre(:Float, :ceil) { !self.infinite? && !self.nan?}

RDL.type :Float, :coerce, '(%real) -> [Float, Float]'

RDL.type :Float, :denominator, '() -> Integer r {{ r>0 }}' ## TODO

RDL.type :Float, :equal?, '(Object) -> ``sing_or_type(trec, targs, :equal?, "%bool")``'

RDL.type :Float, :eql?, '(Object) -> ``sing_or_type(trec, targs, :eql?, "%bool")``'

RDL.type :Float, :fdiv, '(Integer) -> ``sing_or_type(trec, targs, :fdiv, "Float")``'
RDL.type :Float, :fdiv, '(Float) -> ``sing_or_type(trec, targs, :fdiv, "Float")``'
RDL.type :Float, :fdiv, '(Rational) -> ``sing_or_type(trec, targs, :fdiv, "Float")``'
RDL.type :Float, :fdiv, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :fdiv, "BigDecimal")``'
RDL.type :Float, :fdiv, '(Complex) -> ``sing_or_type(trec, targs, :fdiv, "Complex")``'
RDL.pre(:Float, :fdiv) { |x| x != 0 && if (x.real.is_a?(BigDecimal)||x.imaginary.is_a?(BigDecimal)) then (if x.real.is_a?(Float) then (x.real!=Float::INFINITY && !(x.real.nan?)) elsif(x.imaginary.is_a?(Float)) then x.imaginary!=Float::INFINITY && !(x.imaginary.nan?) else true end) && self!=Float::INFINITY && !(self.nan?) else true end && if (x.real.is_a?(Rational) && x.imaginary.is_a?(Float)) then !x.imaginary.nan? else true end}

RDL.type :Float, :finite?, '() -> ``sing_or_type(trec, targs, :finite?, "%bool")``'

RDL.type :Float, :floor, '() -> ``sing_or_type(trec, targs, :floor, "Integer")``'
RDL.pre(:Float, :ceil) { !self.infinite? && !self.nan?}

RDL.type :Float, :hash, '() -> Integer'

RDL.type :Float, :infinite?, '() -> ``sing_or_type(trec, targs, :infinite?, "Integer")``'
RDL.post(:Float, :infinite?) { |r,x| r == -1 || r == 1 || r == nil }

RDL.type :Float, :to_s, '() -> String'
RDL.type :Float, :inspect, '() -> String'

RDL.type :Float, :magnitude, '() -> ``sing_or_type(trec, targs, :magnitude, "Float")``'
RDL.post(:Float, :magnitude) { |r,x| r>=0 }

RDL.type :Float, :modulo, '(Integer x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :modulo, "Float")``'
RDL.type :Float, :modulo, '(Float x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :modulo, "Float")``'
RDL.type :Float, :modulo, '(Rational x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :modulo, "Float")``'
RDL.type :Float, :modulo, '(BigDecimal x {{ x != 0 && !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :modulo, "BigDecimal")``'

RDL.type :Float, :nan?, '() -> ``sing_or_type(trec, targs, :nan?, "%bool")``'

RDL.type :Float, :next_float, '() -> ``sing_or_type(trec, targs, :next_float, "Float")``'

RDL.type :Float, :numerator, '() -> ``sing_or_type(trec, targs, :numerator, "Integer")``'

RDL.type :Float, :phase, '() -> ``sing_or_type(trec, targs, :phase, "%numeric")``'
RDL.post(:Float, :phase) { |r,x| r == 0 || r == Math::PI || r == Float::NAN}

RDL.type :Float, :prev_float, '() -> ``sing_or_type(trec, targs, :prev_float, "Float")``'

RDL.type :Float, :quo, '(Integer x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :quo, "Float")``'
RDL.type :Float, :quo, '(Float x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :quo, "Float")``'
RDL.type :Float, :quo, '(Rational x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :quo, "Float")``'
RDL.type :Float, :quo, '(BigDecimal x {{ x != 0 && !self.infinite? && !self.nan? }}) -> ``sing_or_type(trec, targs, :quo, "BigDecimal")``'
RDL.type :Float, :quo, '(Complex x {{ x != 0 }}) -> ``sing_or_type(trec, targs, :quo, "Complex")``'
RDL.pre(:Float, :quo) { |x| if (x.real.is_a?(BigDecimal)||x.imaginary.is_a?(BigDecimal)) then (if x.real.is_a?(Float) then (x.real!=Float::INFINITY && !(x.real.nan?)) elsif(x.imaginary.is_a?(Float)) then x.imaginary!=Float::INFINITY && !(x.imaginary.nan?) else true end) && self!=Float::INFINITY && !(self.nan?) else true end && if (x.real.is_a?(Rational) && x.imaginary.is_a?(Float)) then !x.imaginary.nan? else true end}

RDL.type :Float, :rationalize, '() -> ``sing_or_type(trec, targs, :rationalize, "Rational")``'
RDL.pre(:Float, :rationalize) { !self.infinite? && !self.nan?}

RDL.type :Float, :rationalize, '(%numeric) -> ``sing_or_type(trec, targs, :rationalize, "Rational")``'
RDL.pre(:Float, :rationalize) { |x| if x.is_a?(Float) then x!=Float::INFINITY && !x.nan? else true end}

RDL.type :Float, :round, '() -> ``sing_or_type(trec, targs, :round, "Integer")``'
RDL.pre(:Float, :round) { !self.infinite? && !self.nan?}

RDL.type :Float, :round, '(%numeric) -> ``sing_or_type(trec, targs, :round, "%numeric")``'
RDL.pre(:Float, :round) { |x| x != 0 && if x.is_a?(Complex) then x.imaginary==0 && (if x.real.is_a?(Float)||x.real.is_a?(BigDecimal) then !x.real.infinite? && !x.real.nan? else true end) elsif x.is_a?(Float) then x!=Float::INFINITY && !x.nan? elsif x.is_a?(BigDecimal) then x!=BigDecimal::INFINITY && !x.nan? else true end} #Also, x must be in range [-2**31, 2**31].

RDL.type :Float, :to_f, '() -> self'

RDL.type :Float, :to_i, '() -> ``sing_or_type(trec, targs, :to_i, "Integer")``'
RDL.pre(:Float, :to_i) { !self.infinite? && !self.nan?}

RDL.type :Float, :to_int, '() -> ``sing_or_type(trec, targs, :to_int, "Integer")``'
RDL.pre(:Float, :to_int) { !self.infinite? && !self.nan?}

RDL.type :Float, :to_r, '() -> ``sing_or_type(trec, targs, :to_r, "Rational")``'
RDL.pre(:Float, :to_r) { !self.infinite? && !self.nan?}

RDL.type :Float, :truncate, '() -> ``sing_or_type(trec, targs, :truncate, "Integer")``'

RDL.type :Float, :zero?, '() -> ``sing_or_type(trec, targs, :zero, "%bool")``'

RDL.type :Float, :conj, '() -> ``sing_or_type(trec, targs, :conj, "Float")``'
RDL.type :Float, :conjugate, '() -> ``sing_or_type(trec, targs, :conjugate, "Float")``'

RDL.type :Float, :imag, '() -> Integer r {{ r==0 }}' ## TODO 
RDL.type :Float, :imaginary, '() -> Integer r {{ r==0 }}'  ## TODO

RDL.type :Float, :real, '() -> ``sing_or_type(trec, targs, :real, "Float")``'

RDL.type :Float, :real?, '() -> ``sing_or_type(trec, targs, :real?, "%bool")``'

RDL.type :Float, :to_c, '() -> Complex r {{ r.imaginary == 0 }}' ## TODO

RDL.type :Float, :coerce, '(%numeric) -> [Float, Float]'
RDL.pre(:Float, :coerce) { |x| if x.is_a?(Complex) then x.imaginary==0 else true end}



######### Non-dependent types below #########


RDL.type :Float, :%, '(Integer x {{ x != 0 }}) -> Float'
RDL.type :Float, :%, '(Float x {{ x != 0 }}) -> Float'
RDL.type :Float, :%, '(Rational x {{ x != 0 }}) -> Float'
RDL.type :Float, :%, '(BigDecimal x {{ x != 0 && !self.infinite? && !self.nan? }}) -> BigDecimal'

RDL.type :Float, :*, '(Integer) -> Float'
RDL.type :Float, :*, '(Float) -> Float'
RDL.type :Float, :*, '(Rational) -> Float'
RDL.type :Float, :*, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> BigDecimal'
RDL.type :Float, :*, '(Complex) -> Complex'
RDL.pre(:Float, :*) { |x| if (x.real.is_a?(BigDecimal)||x.imaginary.is_a?(BigDecimal)) then (if x.real.is_a?(Float) then (x.real!=Float::INFINITY && !(x.real.nan?)) elsif(x.imaginary.is_a?(Float)) then x.imaginary!=Float::INFINITY && !(x.imaginary.nan?) else true end) && self!=Float::INFINITY && !(self.nan?) else true end} #can't have a complex with part BigDecimal, other part infinity/NAN

RDL.type :Float, :**, '(Integer) -> Float'
RDL.type :Float, :**, '(Float) -> %numeric'
RDL.type :Float, :**, '(Rational) -> %numeric'
RDL.type :Float, :**, '(BigDecimal) -> BigDecimal'
RDL.pre(:Float, :**) { |x| x!=BigDecimal::INFINITY && if self<0 then x<=-1||x>=0 else true end}
RDL.post(:Float, :**) { |x| x.real?}
RDL.type :Float, :**, '(Complex) -> Complex'
RDL.pre(:Float, :**) { |x| x != 0 && if (x.real.is_a?(BigDecimal)||x.imaginary.is_a?(BigDecimal)) then (if x.real.is_a?(Float) then (x.real!=Float::INFINITY && !(x.real.nan?)) elsif(x.imaginary.is_a?(Float)) then x.imaginary!=Float::INFINITY && !(x.imaginary.nan?) else true end) && self!=Float::INFINITY && !(self.nan?) else true end}

RDL.type :Float, :+, '(Integer) -> Float'
RDL.type :Float, :+, '(Float) -> Float'
RDL.type :Float, :+, '(Rational) -> Float'
RDL.type :Float, :+, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> BigDecimal'
RDL.type :Float, :+, '(Complex) -> Complex'
RDL.pre(:Float, :+) { |x| if x.real.is_a?(BigDecimal) then self!=Float::INFINITY && !(self.nan?) else true end}

RDL.type :Float, :-, '(Integer) -> Float'
RDL.type :Float, :-, '(Float) -> Float'
RDL.type :Float, :-, '(Rational) -> Float'
RDL.type :Float, :-, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> BigDecimal'
RDL.type :Float, :-, '(Complex) -> Complex'
RDL.pre(:Float, :-) { |x| if x.real.is_a?(BigDecimal) then self!=Float::INFINITY && !(self.nan?) else true end}

RDL.type :Float, :-@, '() -> Float'

RDL.type :Float, :+@, '() -> Float'

RDL.type :Float, :/, '(Integer x {{ x != 0 }}) -> Float'
RDL.type :Float, :/, '(Float x {{ x != 0 }}) -> Float'
RDL.type :Float, :/, '(Rational x {{ x != 0 }}) -> Float'
RDL.type :Float, :/, '(BigDecimal x {{ x != 0 && !self.infinite? && !self.nan? }}) -> BigDecimal'
RDL.type :Float, :/, '(Complex x {{ x != 0 }}) -> Complex'
RDL.pre(:Float, :/) { |x| if (x.real.is_a?(BigDecimal)||x.imaginary.is_a?(BigDecimal)) then (if x.real.is_a?(Float) then (x.real!=Float::INFINITY && !(x.real.nan?)) elsif(x.imaginary.is_a?(Float)) then x.imaginary!=Float::INFINITY && !(x.imaginary.nan?) else true end) && self!=Float::INFINITY && !(self.nan?) else true end && if (x.real.is_a?(Rational) && x.imaginary.is_a?(Float)) then !x.imaginary.nan? else true end}

RDL.type :Float, :<, '(Integer) -> %bool'
RDL.type :Float, :<, '(Float) -> %bool'
RDL.type :Float, :<, '(Rational) -> %bool'
RDL.type :Float, :<, '(BigDecimal x {{ !self.nan? && !self.infinite? }}) -> %bool'

RDL.type :Float, :<=, '(Integer) -> %bool'
RDL.type :Float, :<=, '(Float) -> %bool'
RDL.type :Float, :<=, '(Rational) -> %bool'
RDL.type :Float, :<=, '(BigDecimal x {{ !self.nan? && !self.infinite? }}) -> %bool'

RDL.type :Float, :<=>, '(Integer) -> Object'
RDL.post(:Float, :<=>) { |x| x == -1 || x==0 || x==1}
RDL.type :Float, :<=>, '(Float) -> Object'
RDL.post(:Float, :<=>) { |x| x == -1 || x==0 || x==1}
RDL.type :Float, :<=>, '(Rational) -> Object'
RDL.post(:Float, :<=>) { |x| x == -1 || x==0 || x==1}
RDL.type :Float, :<=>, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> Object'
RDL.post(:Float, :<=>) { |x| x == -1 || x==0 || x==1}

RDL.type :Float, :==, '(Object) -> %bool'
RDL.pre(:Float, :==) { |x| if (x.is_a?(BigDecimal)) then (!self.nan? && self!=Float::INFINITY) else true end}

RDL.type :Float, :===, '(Object) -> %bool'
RDL.pre(:Float, :===) { |x| if (x.is_a?(BigDecimal)) then (!self.nan? && self!=Float::INFINITY) else true end}

RDL.type :Float, :>, '(Integer) -> %bool'
RDL.type :Float, :>, '(Float) -> %bool'
RDL.type :Float, :>, '(Rational) -> %bool'
RDL.type :Float, :>, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> %bool'

RDL.type :Float, :>=, '(Integer) -> %bool'
RDL.type :Float, :>=, '(Float) -> %bool'
RDL.type :Float, :>=, '(Rational) -> %bool'
RDL.type :Float, :>=, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> %bool'

RDL.type :Float, :abs, '() -> Float r {{ r>=0 || (if self.nan? then r.nan? end) }}'

RDL.type :Float, :abs2, '() -> Float r {{ r>=0 || (if self.nan? then r.nan? end) }}'

RDL.type :Float, :div, '(Integer x {{ x != 0 && !self.infinite? && !self.nan? }}) -> Integer'
RDL.type :Float, :div, '(Float x {{ x != 0 && !self.infinite? && !self.nan? }}) -> Integer'
RDL.type :Float, :div, '(Rational x {{ x != 0 && !self.infinite? && !self.nan? }}) -> Integer'
RDL.type :Float, :div, '(BigDecimal x {{ x != 0 && !x.nan? && !self.infinite? && !self.nan? }}) -> Integer'

RDL.type :Float, :divmod, '(%real) -> [%real, %real]'
RDL.pre(:Float, :divmod) { |x| x != 0 && if x.is_a?(Float) then !x.nan? else true end && self!=Float::INFINITY && !self.nan?}

RDL.type :Float, :angle, '() -> %numeric'
RDL.post(:Float, :angle) { |r,x| r == 0 || r == Math::PI || r == Float::NAN}

RDL.type :Float, :arg, '() -> %numeric'
RDL.post(:Float, :arg) { |r,x| r == 0 || r == Math::PI || r == Float::NAN}

RDL.type :Float, :ceil, '() -> Integer'
RDL.pre(:Float, :ceil) { !self.infinite? && !self.nan?}

RDL.type :Float, :coerce, '(%real) -> [Float, Float]'

RDL.type :Float, :denominator, '() -> Integer r {{ r>0 }}'

RDL.type :Float, :equal?, '(Object) -> %bool'

RDL.type :Float, :eql?, '(Object) -> %bool'

RDL.type :Float, :fdiv, '(Integer) -> Float'
RDL.type :Float, :fdiv, '(Float) -> Float'
RDL.type :Float, :fdiv, '(Rational) -> Float'
RDL.type :Float, :fdiv, '(BigDecimal x {{ !self.infinite? && !self.nan? }}) -> BigDecimal'
RDL.type :Float, :fdiv, '(Complex) -> Complex'
RDL.pre(:Float, :fdiv) { |x| x != 0 && if (x.real.is_a?(BigDecimal)||x.imaginary.is_a?(BigDecimal)) then (if x.real.is_a?(Float) then (x.real!=Float::INFINITY && !(x.real.nan?)) elsif(x.imaginary.is_a?(Float)) then x.imaginary!=Float::INFINITY && !(x.imaginary.nan?) else true end) && self!=Float::INFINITY && !(self.nan?) else true end && if (x.real.is_a?(Rational) && x.imaginary.is_a?(Float)) then !x.imaginary.nan? else true end}

RDL.type :Float, :finite?, '() -> %bool'

RDL.type :Float, :floor, '() -> Integer'
RDL.pre(:Float, :ceil) { !self.infinite? && !self.nan?}

RDL.type :Float, :hash, '() -> Integer'

RDL.type :Float, :infinite?, '() -> Object'
RDL.post(:Float, :infinite?) { |r,x| r == -1 || r == 1 || r == nil }

RDL.type :Float, :to_s, '() -> String'
RDL.type :Float, :inspect, '() -> String'

RDL.type :Float, :magnitude, '() -> Float'
RDL.post(:Float, :magnitude) { |r,x| r>=0 }

RDL.type :Float, :modulo, '(Integer x {{ x != 0 }}) -> Float'
RDL.type :Float, :modulo, '(Float x {{ x != 0 }}) -> Float'
RDL.type :Float, :modulo, '(Rational x {{ x != 0 }}) -> Float'
RDL.type :Float, :modulo, '(BigDecimal x {{ x != 0 && !self.infinite? && !self.nan? }}) -> BigDecimal'

RDL.type :Float, :nan?, '() -> %bool'

RDL.type :Float, :next_float, '() -> Float'

RDL.type :Float, :numerator, '() -> Integer'

RDL.type :Float, :phase, '() -> %numeric'
RDL.post(:Float, :phase) { |r,x| r == 0 || r == Math::PI || r == Float::NAN}

RDL.type :Float, :prev_float, '() -> Float'

RDL.type :Float, :quo, '(Integer x {{ x != 0 }}) -> Float'
RDL.type :Float, :quo, '(Float x {{ x != 0 }}) -> Float'
RDL.type :Float, :quo, '(Rational x {{ x != 0 }}) -> Float'
RDL.type :Float, :quo, '(BigDecimal x {{ x != 0 && !self.infinite? && !self.nan? }}) -> BigDecimal'
RDL.type :Float, :quo, '(Complex x {{ x != 0 }}) -> Complex'
RDL.pre(:Float, :quo) { |x| if (x.real.is_a?(BigDecimal)||x.imaginary.is_a?(BigDecimal)) then (if x.real.is_a?(Float) then (x.real!=Float::INFINITY && !(x.real.nan?)) elsif(x.imaginary.is_a?(Float)) then x.imaginary!=Float::INFINITY && !(x.imaginary.nan?) else true end) && self!=Float::INFINITY && !(self.nan?) else true end && if (x.real.is_a?(Rational) && x.imaginary.is_a?(Float)) then !x.imaginary.nan? else true end}

RDL.type :Float, :rationalize, '() -> Rational'
RDL.pre(:Float, :rationalize) { !self.infinite? && !self.nan?}

RDL.type :Float, :rationalize, '(%numeric) -> Rational'
RDL.pre(:Float, :rationalize) { |x| if x.is_a?(Float) then x!=Float::INFINITY && !x.nan? else true end}

RDL.type :Float, :round, '() -> Integer'
RDL.pre(:Float, :round) { !self.infinite? && !self.nan?}

RDL.type :Float, :round, '(%numeric) -> %numeric'
RDL.pre(:Float, :round) { |x| x != 0 && if x.is_a?(Complex) then x.imaginary==0 && (if x.real.is_a?(Float)||x.real.is_a?(BigDecimal) then !x.real.infinite? && !x.real.nan? else true end) elsif x.is_a?(Float) then x!=Float::INFINITY && !x.nan? elsif x.is_a?(BigDecimal) then x!=BigDecimal::INFINITY && !x.nan? else true end} #Also, x must be in range [-2**31, 2**31].

RDL.type :Float, :to_f, '() -> Float'

RDL.type :Float, :to_i, '() -> Integer'
RDL.pre(:Float, :to_i) { !self.infinite? && !self.nan?}

RDL.type :Float, :to_int, '() -> Integer'
RDL.pre(:Float, :to_int) { !self.infinite? && !self.nan?}

RDL.type :Float, :to_r, '() -> Rational'
RDL.pre(:Float, :to_r) { !self.infinite? && !self.nan?}

RDL.type :Float, :truncate, '() -> Integer'

RDL.type :Float, :zero?, '() -> %bool'

RDL.type :Float, :conj, '() -> Float'
RDL.type :Float, :conjugate, '() -> Float'

RDL.type :Float, :imag, '() -> Integer r {{ r==0 }}'
RDL.type :Float, :imaginary, '() -> Integer r {{ r==0 }}'

RDL.type :Float, :real, '() -> Float'

RDL.type :Float, :real?, '() -> true'

RDL.type :Float, :to_c, '() -> Complex r {{ r.imaginary == 0 }}'

RDL.type :Float, :coerce, '(%numeric) -> [Float, Float]'
RDL.pre(:Float, :coerce) { |x| if x.is_a?(Complex) then x.imaginary==0 else true end}
