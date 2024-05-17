while true

    puts "実施したい処理を選択してください"
    puts "1:評価ポイントとコメントを入力する"
    puts "2:今までの結果を確認する"
    puts "3:終了する"
    number = gets.to_i

    def input
        
        while true 
            puts "1から5の数字で評価を入力してください。"
            number = gets.to_i
            posts = []
   
            if (1..5).include?(number)
                puts "コメントを入力してください"
                comment = gets.chomp
                post = {
                    point: number,
                    comment: comment
                }
                posts.push(post)
                file = File.open("data.txt","a") do |file|
                    file.puts "ポイント：#{post[:point]} コメント：#{post[:comment]}"
                    #file.close
                end
                break
            else
                puts "1から5で入力してください"
                gets.to_i
            end
        end
    end

    def output
        puts "これまでの結果"
        file = File.open("data.txt", "r")
        puts file.read
        file.close
    end

case number
    when 1 then
        input
    when 2 then
        output
        break
    when 3 then
        puts "終了します"
        break
    else
        puts "1から3で入力してください"
    end
end


