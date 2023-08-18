# Chaos
授業で習った内容のプログラムを自作

* 実際の計算は<a href="https://github.com/mickylan2367/Chaos_Fractal.git">こっちのリポジトリ</a>を参照してね

## 複雑系数理アート（木本佳子, 2009）
#### 更新式
$$ x_{n+1} = x_n + (x_n cos\theta - y_n sin\theta )/r_n $$

$$ y_{n+1} = y_n + (x_n sin\theta - y_n cos\theta )/r_n $$

$$ r_n = \sqrt{x_n ^2 + y_n ^2} $$

* thetaの値でアトラクタの様子が変わる。
* はじめは0に収束していますが、途中でぴょこぴょこ変わった軌道が生まれていることが分かります。
<p align="center">
    <img src="https://github.com/mickylan2367/Chaos/assets/83509964/b6337109-861c-4d1a-8251-6e7406b31baf" width="600px">
</p>

* theta = 1.6付近から徐々に軌道が大きく発散し枝は回転しながら直線に近づいていきます。
* 色が美しかったので、色の機能を持つ関数をhanabi(花火)にしました。
<p align="center">
    <img src="https://github.com/mickylan2367/Chaos/assets/83509964/4372b3d2-f6a0-429f-a09f-363ed87f0328" width="600px">
</p>

* theta=3付近をピークに枝が逆向きにしなり、同じ軌道へ戻っていきます。
<p align="center">
    <img src="https://github.com/mickylan2367/Chaos/assets/83509964/98b4fa09-1cc8-403a-9ac7-201059aa8700" width="600px">
</p>

* もっと芸術的にしたい！ということで、少し写像する回数を増やしてみると..台風の目とか、花弁が開くときの様子に似た感じになった..??
<p align="center">
    <img src="https://github.com/mickylan2367/Chaos/assets/83509964/a1d9d459-7654-4603-8d2b-8598b3975ecf" width="600px">
</p>

## グモウスキー・ミラー写像
* イーゴリ・グモウスキーとクリスチャン・ミラー(1968)
* グモウスキーはジュネーブのCERNで主任物理学者を務め、加速器あるいは蓄積リング内での粒子の横方向の運動を写像した。
* 有名な神の翼(named by Mirror)について
    * パラメータ $(\alpha, \beta, \mu) = (0.008, 0.05, −0.496) $のときには3枚羽の翼
    * パラメータ $(\alpha, \beta, \mu )= (0.009, 0.05, −0.801) $のとき、5枚羽の翼
  が描かれる

#### 更新式
$$ x_{n+1} = y_n + a(1-b y_n ^2 ) y_n + F(x_n) $$

$$ y_{n+1} = -x_n + F(x_{n+1}) $$

$$ F(x) = \mu x + 2(1-\mu)x^2/(1+x^2) $$


* 3枚の翼について
<p align="center">
    <img src="https://github.com/mickylan2367/Chaos/assets/83509964/272b2c48-53b2-4173-8cc7-a61db097a3f9" width="600px">
</p>

* 5枚の翼について
<p align="center">
    <img src="https://github.com/mickylan2367/Chaos/assets/83509964/e9cd9611-316d-409c-a8d4-f75b28ebdeef" width="600px">
</p>

## 池田写像
* 1979年に池田研介氏によって発見
* 非線形光共振器？における光の軌跡モデルとして提案された
* 平面に描画する場合、以下の二次元非線形写像を用いる

$$x_{n+1} = a + b(x_n cos(\theta) - y_n cos(\theta))$$

$$y_{n+1} = b(x_n sin(\theta) + y_n cos(\theta))$$

$$\theta = 0.4 - \frac{6}{1 + x_n ^2 + y_n ^2}$$

* $a = 1.0, b = 0.5$の場合、中央付近の一か所に集中する。
<p align="center">
    <img src="https://github.com/mickylan2367/Chaos/assets/83509964/bea7f1db-4578-4cad-bdd2-156144668a44" width="500px">
</p>

* $a = 1.0, b = 0.75$の場合、3か所に収束
<p align="center">
    <img src="https://github.com/mickylan2367/Chaos/assets/83509964/0eb686d4-cd74-4887-b7d1-d4227c850e52" width="500px">
</p>

* $a = 1.0, b = 0.9$の場合も同様。
<p align="center">
    <img src="https://github.com/mickylan2367/Chaos/assets/83509964/8bcaebcf-290a-4bad-bb1a-96a0c0a7ca9d" width="500px">
</p>

* 正直、うまく写像できているのか、あんまり自信ないので注意。2万個ぐらい写像すればマシにはなるかも..???

#### 参考
[1] <a href="https://note.com/evjunior/n/n46c7ac14a921">Cinderellaでカオスを描く：グモウスキー・ミラーの写像</a>
[2] <a href ="https://ja.wikipedia.org/wiki/%E6%B1%A0%E7%94%B0%E5%86%99%E5%83%8F">池田写像（wikipedia）</a>



