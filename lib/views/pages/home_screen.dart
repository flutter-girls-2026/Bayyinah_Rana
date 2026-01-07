import 'package:bayyinah_rana/core/network/method/ayah_api.dart';
import 'package:bayyinah_rana/presenters/cubit/ayah_cubit.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AyahCubit(AyahApi())..loadAyah(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'بينة',
            style: GoogleFonts.gulzar(
              color: Colors.white, fontSize: 45,
              wordSpacing: 2
              ),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<AyahCubit, AyahState>(
          builder: (context, state) {
            if (state is AyahLoading) {
              return Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            }
            if (state is AyahLoaded) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: Swiper(
                  itemCount: state.ayahat.length,
                  itemBuilder: (context, index) {
                    final ayah = state.ayahat[index];
                    return Align(
                      alignment: .topCenter,
                      child: Container(
                        width: 350,
                        height: 650,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          image: DecorationImage(
                            image: AssetImage('assets/images/background.jpg'),
                            fit: BoxFit.fill,
                          ),

                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: .center,
                          children: [
                            Text(
                              ayah.data.text,
                              textDirection: .rtl,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),

                            SizedBox(height: 10),
                            Text(
                              '${ayah.data.surah.name} [${ayah.data.numberInSurah}] ',
                              textDirection: .rtl,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: .bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  pagination: SwiperPagination(
                    alignment: .bottomCenter,
                    margin: EdgeInsetsGeometry.only(bottom: 90),
                    builder: DotSwiperPaginationBuilder(
                      activeColor: Colors.blueGrey,
                    ),
                  ),
                ),
              );
            }
            if (state is ErrorState) {
              return Center(child: Text(state.errorMessage));
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
