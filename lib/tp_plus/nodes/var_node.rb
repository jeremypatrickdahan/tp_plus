module TPPlus
  module Nodes
    class VarNode
      attr_reader :identifier
      def initialize(identifier)
        @identifier = identifier
      end

      def eval(context,options={})
        return context.get_constant(@identifier).eval(context) if @identifier.upcase == @identifier

        s = ""
        if options[:opposite]
          s += "!"
        end
        s + context.get_var(@identifier).eval(context)
      end
    end
  end
end
