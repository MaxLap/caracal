require 'caracal/core/models/base_model'
require 'caracal/core/models/border_model'
require 'caracal/core/models/margin_model'
require 'caracal/core/models/paragraph_model'


module Caracal
  module Core
    module Models

      # This class handles block options passed to tables via their data
      # collections.
      #
      class TableRowModel < BaseModel

        #-------------------------------------------------------------
        # Configuration
        #-------------------------------------------------------------


        # accessors
        attr_reader :row_height

        # initialization
        def initialize(options={}, &block)
          super options, &block
        end


        #-------------------------------------------------------------
        # Public Methods
        #-------------------------------------------------------------

        #=============== SETTERS ==============================

        # integers
        [:height].each do |m|
          define_method "#{ m }" do |value|
            instance_variable_set("@row_#{ m }", value.to_i)
          end
        end

        #=============== VALIDATION ===========================

        def valid?
          true
        end


        #-------------------------------------------------------------
        # Instance Methods
        #-------------------------------------------------------------

        def option_keys
          @options_keys ||= [:height]
         end

      end

    end
  end
end
