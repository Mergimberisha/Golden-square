class Reminder
def initialize(name)
    @name = nameend

    def remind_me_to(task)
        @task = taskend

        def remind()
            fail "No reminder set!" if @task.nil?
            return "#{@task}, #{@name}!"
        end
    end