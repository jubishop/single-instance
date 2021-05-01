require_relative '../lib/single_instance'

RSpec.describe(SingleInstance) {
  it('lets you call instance directly') {
    class InstanceClass
      include SingleInstance

      def initialize(name)
        @name = name
      end

      def say_hi
        "hello #{@name}"
      end
    end
    expect(InstanceClass.instance('joe').say_hi).to(eq('hello joe'))
  }

  it('calls instance implicitly') {
    class AutomaticClass
      include SingleInstance

      def initialize(name = 'john')
        @name = name
      end

      def say_hi
        "hello #{@name}"
      end
    end
    expect(AutomaticClass.say_hi).to(eq('hello john'))
  }

  it('blocks calls to private methods') {
    class PrivateClass
      include SingleInstance

      def initialize(name = 'john')
        @name = name
      end

      private

      def say_hi
        "hello #{@name}"
      end
    end
    expect { PrivateClass.say_hi }.to(raise_error(NoMethodError))
  }
}
