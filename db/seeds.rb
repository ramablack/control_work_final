User.create!(name: 'Teacher', email: 'teacher@gmail.com',
             password: '12345678',
             password_confirmation: '12345678')

@test1 = Test.create!(name: 'Ruby on Rails#CW1', description: 'RoR')
@test2 = Test.create!(name: 'PHP#CW2', description: 'PHP-test')

@question1 = Question.create!(question: 'Which command we use in linux?',
                              test_id: @test1.id
)

@question2 = Question.create!(question: 'What is interpolation?',
                              test_id: @test1.id
)

@question3 = Question.create!(question: 'concatenation is?',
                              test_id: @test2.id
)

@question4 = Question.create!(question: 'what is active record?',
                              test_id: @test2.id
)


Answer.create!(answer: 'java', question_id: @question1.id)
Answer.create!(answer: 'script', question_id: @question1.id)
Answer.create!(answer: 'rails new', question_id: @question2.id)
Answer.create!(answer: 'ruby', question_id: @question2.id)

Answer.create!(answer: 'ls, cd, mkdir', question_id: @question3.id)
Answer.create!(answer: 'interpolation', question_id: @question3.id)
Answer.create!(answer: 'ls, cd, mkdir', question_id: @question4.id)
Answer.create!(answer: 'interpolation', question_id: @question4.id)



