def RPS
    count = 0

    loop do
        if count == 0
            puts "じゃんけん・・・"
        else
            puts "あいこで・・・"
        end
        puts "0(グー)1(チョキ)2(パー)3(戦わない)"
        my_hand = gets.chomp.to_i

        if my_hand == 3
            puts "逃走しました！"
            break
        elsif my_hand == 0 || my_hand == 1 || my_hand == 2
            if count == 0
                puts "ホイ！"
            else
                puts "ショッ"
            end
        else
            puts "不正な入力です"
            next
        end

        puts "---------------"

        case my_hand
        when 0
            puts "あなた:グーを出しました"
        when 1
            puts "あなた:チョキを出しました"
        when 2
            puts "あなた:パーを出しました"
        end

        # 相手の手を取得
        random = Random.new()
        enemy_hand = random.rand(3)

        case enemy_hand
        when 0
            puts "相手:グーを出しました"
        when 1
            puts "相手:チョキを出しました"
        when 2
            puts "相手:パーを出しました"
        end

        puts "---------------"

        if (enemy_hand - my_hand == 1) || (enemy_hand - my_hand == -2)
            puts "あなたの勝ちです"
            break
        elsif (enemy_hand - my_hand == -1) || (enemy_hand - my_hand == 2)
            puts "あなたの負けです"
            break
        else
            count = 1
        end
    end
end


def LookOverThere
    my_direction = 0
    loop do
        puts "あっち向いて〜"
        puts "0(上)1(下)2(左)3(右)"
        my_direction = gets.chomp.to_i
        if my_direction == 0 || my_direction == 1 || my_direction == 2 || my_direction == 3
            puts "ホイ！"
            break
        else
            puts "不正な入力です"
            next
        end
    end

    puts "---------------"

    case my_direction
    when 0
        puts "あなた:上"
    when 1
        puts "あなた:下"
    when 2
        puts "あなた:左"
    when 3
        puts "あなた:右"
    end
    # 相手の方向を取得
    random = Random.new()
    enemy_direction = random.rand(4)

    case enemy_direction
    when 0
        puts "相手:上"
    when 1
        puts "相手:下"
    when 2
        puts "相手:左"
    when 3
        puts "相手:右"
    end

    puts "---------------"

    if my_direction == enemy_direction
        puts "勝ちです" 
    else
        puts "もう一度"
    end

end

