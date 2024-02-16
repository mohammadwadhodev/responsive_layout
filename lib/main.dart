import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/counter_demo.dart';
import 'package:learn_flutter/routes/constants.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProviderScope(child: MyApp()),

  ));
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

final nameProvider = Provider<String>((ref) =>  'Muhammad wadho');
//final counterProvider = StateProvider((red) => 0);
final counterProvider = StateNotifierProvider<CounterDemo,int>((ref) => CounterDemo());

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    //final name = ref.watch(nameProvider);
    
    // ref.listen(counterProvider, (previous, next) {
    //   print("build method $previous: $next");
    // });
    //

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).increment(),
        child: const Icon(Icons.add),
      ),
      body: Center(child: Consumer(
        builder: (context,red,child) {
          final count = red.watch(counterProvider);
          return Text("hello : $count");
        }
      )),
    );
  }
}


final counterProvider2 = StateProvider((ref) => 0);

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        // Consumer is a builder widget that allows you to read providers.
        child: Consumer(
          builder: (context, ref, _) {
            final count = ref.watch(counterProvider);
            return Text('$count');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // The read method is a utility to read a provider without listening to it

        onPressed: () => ref.read(counterProvider.notifier).state++,
        child: const Icon(Icons.add),
      ),
    );
  }
}




// class ThirdScreen extends StatelessWidget {
//   const ThirdScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           automaticallyImplyLeading: true,
//           backgroundColor: Colors.blue),
//       body: Center(child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text("THIRD SCREEN "),
//           const SizedBox(height: 10),
//           ElevatedButton(onPressed: (){
//             GoRouter.of(context).pushNamed(MyAppRoutes.myAppRoute);
//           }, child: const Text("GO BACK")),
//
//         ],
//       )),
//     );
//   }
// }
//
//
//
// class ErrorScreen extends StatelessWidget {
//   const ErrorScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           automaticallyImplyLeading: true,
//           backgroundColor: Colors.blue),
//       body: Center(child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text("THIRD SCREEN "),
//           const SizedBox(height: 10),
//           ElevatedButton(onPressed: (){
//             GoRouter.of(context).go(MyAppRoutes.myAppRoute);
//           }, child: const Text("GO BACK")),
//
//         ],
//       )),
//     );
//   }
// }



