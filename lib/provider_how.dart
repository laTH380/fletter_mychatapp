// ChangeNotifierを継承すると変更可能なデータを渡せる
class CountData {
  int count = 0;

  void increment() {
    count = count + 1;
    // 値が変更したことを知らせる
    //  >> UIを再構築する
    notifyListeners();
  }
}

class ParentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider<T>() で子Widgetにデータを渡す
    // ※ 渡すデータの クラス と <T> は揃えましょう
    return Provider<CountData>.value(//Provoiderが<>のクラスのインスタンスを渡すという文
    return ChangeNotifierProvider<CountData>(//更新がある場合はこっちで渡す
      // 渡すデータ
      create: (context) => CountData(),//CountDataの新しいインスタンスを作成します。createはproviderクラスのプロパティ。クラスインスタンスを作る関数を受け取る。⇒はアロー関数。実際は
      // create: (context) {
      //   return CountData();
      // }という文の省略形contextはページのウィジェット配置やメタ情報を持つ特別なオブジェクト。ここでは引数として与えられているが特に使われていない(pythonのselfみたいなものかな)
      child: Container(// 子ウィジェット（ここではChildWidget）を定義します。
        child: ChildWidget(),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider.of<T>(context) で親Widgetからデータを受け取る
    // ※ 受け取るデータの クラス と <T> は揃えましょう
    final CountData data = Provider.of<CountData>(context);//親ウィジェットからCountDataのインスタンスを取得します。

    return Column(
      children: <Widget>[
        // 受け取ったデータを使いUI作成
        Text('count is ${data.count.toString()}'),
        ElevatedButton(
          child: Text('Increment'),
          onPressed: () {
            // データを更新
            data.increment();
          },
        ),
      ]
    )
  }
}