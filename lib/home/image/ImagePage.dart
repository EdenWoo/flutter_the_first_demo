import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10.0),
              Material(
                child: Image(
                  image: NetworkImage(//从网络加载图片并缓存在内存中
                      "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3882265467,3924971696&fm=27&gp=0.jpg"),
                  width: 350.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              const SizedBox(height: 10.0),
              Image(
                image: NetworkImage(
                    "https://f10.baidu.com/it/u=3013723786,634098997&fm=72"),
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10.0),
              Image(
                image: AssetImage('assets/images/illustration_15.jpg'),
                //从Assets加载图片
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10.0),
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1532083212661&di=1e6a83ce63ee91075259db733dea7303&imgtype=0&src=http%3A%2F%2Fww2.sinaimg.cn%2Flarge%2F85cccab3gw1etdhar2z0sg20go09ethj.jpg",
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 1200),
                fadeOutDuration: const Duration(milliseconds: 1200),
              ),
              const SizedBox(height: 10.0),
              Material(
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/ic_no_avatar.png',
                  image:
                      "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3882265467,3924971696&fm=27&gp=0.jpg",
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                  fadeInDuration: const Duration(milliseconds: 1200),
                  fadeOutDuration: const Duration(milliseconds: 1200),
                ),
                borderRadius: BorderRadius.circular(100.0),
              ),
              const SizedBox(height: 20.0),
              Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/illustration_28.jpg',
                    ),
                    //从Assets加载图片
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(height: 20.0),
              CircleAvatar(
                child: Image(
                  image: AssetImage('assets/images/illustration_15.jpg'),
                ),
              ),
              SizedBox(height: 20.0),
              ClipOval(
                child: SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: Image(
                    image: AssetImage(
                      'assets/images/illustration_13.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ClipOval(
                child: SizedBox(
                  width: 350.0,
                  height: 180.0,
                  child: Image(
                    image: AssetImage(
                      'assets/images/illustration_13.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
