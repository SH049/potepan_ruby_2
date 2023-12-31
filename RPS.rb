class JapaneseGame
    class << self # メソッド内でメソッドを使用できるようにする 特異クラス
        
        def initialine(judgement) #最終的な勝敗の決定
            @judgement = judgement
        end

        def RPS #じゃんけん　クラスメソッド
            count = 0 #あいこの判断

            loop do #勝敗がつかない限りループする
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
                        puts "ショ！"
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

                if (enemy_hand - my_hand == 1) || (enemy_hand - my_hand == -2) #自分が勝ち
                    @judgement = 0
                    LookOverThere() #あっち向いてホイを呼び出す
                    break
                elsif (enemy_hand - my_hand == -1) || (enemy_hand - my_hand == 2) #自分が負け
                    @judgement = 1
                    LookOverThere()
                    break
                else
                    count = 1 #あいこの場合
                end
            end
        end


        def LookOverThere #あっち向いてホイ　クラスメソッド
            my_direction = 0 #自分の向きの初期化
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
                if @judgement == 0
                    puts "あなたの勝ちです"
                elsif @judgement == 1
                    puts "あなたの負けです"
                end
            else
                RPS()
            end

        end
    end
end

JapaneseGame.RPS