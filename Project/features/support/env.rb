Before do |scenario|
    @line_no = scenario.line
    p "Starting Scenario : " + scenario.name
end

AfterStep do |scenario|
    if scenario.class.to_s.upcase.eql? "Cucumber::Ast::OutlineTable::ExampleRow".upcase
        #do nothing
    elsif scenario.class.to_s.upcase.eql? "Cucumber::Ast::Scenario".upcase
        p scenario.raw_steps[scenario.line - @line_no].name + (scenario.passed? ? " - passed " : " - failed").to_s
        @line_no -= 1
    end
end

After do |scenario|
    p "Ending Scenario : " + scenario.name
end

