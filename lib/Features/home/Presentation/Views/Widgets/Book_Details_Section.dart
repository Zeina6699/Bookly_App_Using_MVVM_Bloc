import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_BookDetailsAppBar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_ListViewItem.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/RatingBookly.dart';
import 'package:flutter/widgets.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SafeArea(child: CustomBookDetailsAppBar()),
        SizedBox(
            width: MediaQuery.of(context).size.width * .46,
            child: const CustomListViewItem(imageURL: 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBIWEhISERUREhIZFR0VEBEYGBQSGBEYGBgaHRgUHBgcIS4lHB4rIRYZJz4mKy8xNzU1HCQ7QDszPy41NTEBDAwMEA8QHxISHjohJSwxNDQ0MTQxMTY0NDQ0Njc0OjQ0NDc0MTQ0PzQ1MTQ0NDQ0NDQ0NDQ0NDQ0NDE0NDQ0Nf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAABQYCBAEDBwj/xABMEAACAQMCAgUHCAYFCwUAAAABAgADBBESIQUxBkFRYXEHEyIycoHBFDM1kaGxsrNCUnOCktE0Q1Ri8CMkJWSDpLTCw9LhFWOio/H/xAAZAQEAAwEBAAAAAAAAAAAAAAAAAQIDBAX/xAApEQEBAAIBAwMDAwUAAAAAAAAAAQIRAxIhMSIyUQRBcSOR8BMzgbHB/9oADAMBAAIRAxEAPwD2aIiAiIgYE43PLrMrHEOlukqtK2uqpZ/N0iy/J1qtgnC68MRhSdWnAAJzjeb/AEnubpKI+RLSaszhc1M6FXBLMQpBJ2A98r/B6d2a7Pf1Eq1AmaSoqqlJXIBC43JOk5J6sTHPPV1GmOO5up+lfXWMuLfPWgNTbu143/hnevE3Hr0W7yjo4Hf6RU/ZI24ulUFmOlM4GObnOMD3kDtJM1m4rRVxTepTp1DjFI1lV9+QKHfJ7Dg90iZZLXHFYBxWl+kXT20dB/ERp+2bNG5R90ZHHarBvukItY9re9QfunDmmx9NKdQ94Bb3BhmTOS/eIuEWKdFzcLTRnfVpAydKtUY9wVQWJ7gCZGU6Y5o9RezDuQP3WJX7JEceueJB0p2bUipUmpVqqCyHOFChQB1HmOyLyyTaJx21p9IPKGLcqnyS484+PMo+lXfJIUimpLbkYAOkk8uRxhR6YcVUaq/CqhXmPN1EZsd6ZJBkf0csaj8TqVLt/P16FuuG0qo11alRdYUbAhKYTbtMu6grtjUMYySQR38t/wDx1y2Ntm7UWTavp5TLNcfKqV5Zk7f5Wi4APiBJuw6YcOrbUrq3Y/qlgh+psTsc9R3HZIi96PWNUk1ba2ZjzY01DfxAZ+2W7o0t1OorDKsrDtBBH2TOeC9OOj5sXp3NlUuaFqx01Upu58y/6DAk+q3LfkR3gSa6FjjlW3W4N8UV96NOrSFYsoOA5yQVBxtzyN+uSjXfT2CJRU4nxyn69Gwux/cqVLd2Hg66QffO9emtVP6Tw6/p9r01W6Ud+aZOI2aXSJCcC6T2l2XW3qZqL69F1anUTvKMAcd8m5KCIiAiIgIiICIiAiIgIiIGjxDkvj8JBVWxWc9lEfiaT1/yXxkDc/OVP2I/E05OT+5fw6MPbGnxbiCUKFzUBU16dDXQUndf0deO5m5988dqoxLMxLMfSqOd9RY7tvzGdp6J0yoBatKq500KiPZXL9VLzoHmqp7Ar9fh2zz25NRGejVBR09B0P6JBByvaDgEHrBBHOdHDrvtlyb7PSPJ9xZqtF6Tks1PTpY7ko2cLnrwVI8NMsVV2L1FVkOhQTTxktnOST/LsPupnk4tylOvcOCKbYVMAkvpLasAbtuwAxzII6pP8T6QWdKoq1qjUqwHpoqmoyg5wrlFYA7k4BMpZOpaXsnrapgrzww6+0jb39X1Tvq8/d/OaFO5pvTSpTZXT0SjKcggHt932SQqc/dMOTw2w8qzwA/6S4l+zofjuJZneVTgzY4lxL2KH468m6txOrCemML5bL1J0tWE0XuZrPdS+kJRqgIIOCDzB3B907EqCQgup3U7mNCbR5mxOQRq5HkRjl1g/ZI2jcTepVZWwR3HuHvUTz1EBLygDUtaukg6lGTRZh6yPupXvz1Sy8Jvkr0KNwnq1Ka1FHYGUHB7xnE1aZ3E0PJ19FWP7ID6mMRWrPERLIIiICIiAiIgIiICIiBp33JfGQF385U/Yj8TSevzsDv18t+qV+u4Z3ZeRoKy7EbEsRsdx75ycnvv4dGHtheJTanUWsENMgioHxpK43znbEjRwK1xTp1Ep1FRcUqdZUq1ETmEUv6enuORtNzi14lGhc1yAz0k10kPLXyViOvBxPGrhnd2qVGL1C2t3O51Hke7l9k1wwtUyy09pe/pUCieiHZH+TpjbVTTVgYGBhQeyeLaHcecbLM+XdzuWbGpvsP2S1W3EK1e1p1lDVbizrLVK+s1ekQwZT2sQHHadI5kmVziVr5nS6EvaOCbW4GSro39Wx6nUeiQd9ieU04vTbKrn3ksWXyfcQYPUoEkoy61H6rKyg48Qwz7AnqTc55f0A4bUy906laZQLSJGNeplJZe1QFxnkdW3Iz09jvObn1u6a8XhSLWrp4lxL2aP4q0lLvWqB2XCHGDkHGrdSQDkZxtnnK7c1dPEuIexS++rJnidZQtwAxa4FKmLheSKqlAzKesgimCDjGpiMjl3cePoxrDLL1VpVLuazXnfI6pxBUam9PVrUZfWEZdYY4KjrXGnn15m7xGrUqrY+dOK9ZmUsQqs9NnRaTsoA5kvg43CiWs0mVkLrvndTupp8UrUmSs1Gn5s0bgUdizecpsHCO2on080m5Yzr7plxLhNzboHrKoU6RkNnBYZAI7sEHv8RmptMW93JS2upS6F53yUtbzvjp2bXW3rbiYeT0f6Ls/2Z/G0ibK65SX8n/0baey342lbjqotWSIiQgiIgIiICIiAiIgIiIGnfch7/ulbprk47bdB9eqWS+5D3/dK9b+sv7Gn9xnJye+t8PbFO6TITWpFyFp3FB7Ko55U6jDNJm7tayjVarqXp1AUdfQdG2KMrAsPrE9b4xw5HR1dBUov85T7D+sOw7A5HWJGf8Ao1o4Tz2i4KKFWpUDCqVHqo7oylwBt6QJ75px8vSZ4dSL8nNu2mtUIwjMqIf1iuot9WtfrM7+C9JrV7t6FKkaId2KujaVruASWdFAAJC7Hfq7ZZ7dEVVWmEVFGEVQFVR2ADYCVfh/QtKV58qFUlFZnp0NOCrMDsWzuo1HAwDy32OXVMrbTVkki2ecyoYhgTpJDbsCSNjudxy5mSlT4iRVP06ioOQOpz2Y5D65Kv8A4+sTDPw0jy/jVTTxK+9mn99SL7pCCjjzSCu6LTq3Gt8uilf6vkrHSuWzvg7DM0+lL44leezT/wCeaF3x7UdVSlTdhsGHokABgBuG2GR9Xbgj1+Kfo41w5e+u+xvrVa9q1QP5tcG5DAOGYMxGlRzTGnIO/rRxLiFNbindrdm+fzqvUzSq0HBRlYDD7Y2wApwMYkV8vsyyl6VRN8uFYuDz2GWGBymq/wAl1LpqOUKNliBlXAUISo6tRbbnhe8ZzyvdZa+JXItkrvTq0ahrXqV7XQ61D5qkarrUZQcr6VVF0tg5VuzM2OMeUOrc0GoPRooWwGdSx2BBwFPLdQc5PKU1+HodQo3FKoQCdJZVL6S4LLgnGyKcH9bswTjVsKiPoZkzrKFgxIDKuo52zgKQScYAIzjfFeyUpRu5K2t5KpULI7U32ZdmHZkA/GbltdTTHuWr9YXfKXXoB9GWvst+Y88r4fdcp6l5PPoy19lvzHjmx1pXG72s0REwWIiICIiAiIgIiICIiBHcVICMza9IVi2gMWwF30hdy3YBv2SGKBarIuyrTRVGSdhqA3O598n73kMc98dXZK8lXXUL40lqaErnOnOrbPXOPk99b4eI2J0vaU25ov1TtEyBkNWmeF0+oFfAkR/6YP16mOzM3RMgYGFtbqgwgx2nrM7Ho69OGZcOGOP0gP0T3GcidtLr8ZXLwh4r02fHErvwT/nlTuK0sPlAqY4pdDtCH6s/zlQuKk9bjy/SkcWU9VcvVnS1SdLPMMzO1Lv85OylcsuNLMuCSuCV0lgAxGOWQAD4TTzOQ0jaUiLlmOpmZmPNiSxOBgbnuAm5b15DK82aVWXxqFssLncT2rycfRdp7LfmPPn6xr7ie/eTP6Js/Zf815fmvpiuM71a4iJzrkREBERAREQEREBERA1L3kPf8JWbY+l/sqf3NLLerkAHO4I2JB6uRHKV40wtV0UYVURVGScABgNzuZycnvrfDxHeJkJ1iZCUbMwZyJjMgZKGQM76HI+PwE1wZsW/I+PwErl4Hz/5THxxWsfAGVOq28tHlQ+lLj3fdKswyuezY/Az0ePL0acefudJMREihERICZq0wgS0olLOpuJ9GeTD6Is/Zf8ANefM9N8An6vGfSvkr+h7L2H/ADXluTLckRIt8REzSREQEREBERAREQEREDVu+r3/AAlfr/P1fZT7mlhuur3/AAlfuPn6nsp9xnHye+t8PEczkGcQJVszE5EwEyEIZCbVvyPj8BNUTatvV9/8pGXgfPXlPP8ApO48R90q9CrpbJGQdmHaDzEs/lO+k7jxH3SpTuw7SOTLy27u104ZTqptvTft7VPYw6x/Oak37G+83lWUVKTfOUjsD/eVuasOph9o2m0/Bi6mpZk3CDdqQH+Xpe1TG7AZ9Zcjtxyl737xCGicsCDg7HrHZOJUJkikkADJOwHbNqy4fVqk+bUlRu7n0UQdrOdlHiZ3VzTpApSYVKhGHqj1V7VTPP2uvq77SfeoaVbA9EHOOZ7T147p9L+Sn6Gs/Zf8158xz6b8k/0NZ+D/AJ1SVt3U/ZcYiICIiAiIgIiICIiAiIga111f47JX7n5+p7KfcZYLrq/x2Sv3Xz1TwT7jOTk91b4eI4mUxiZtmQmQmAmQkjMTbtPV9/8AKaQm9Z+r7/gJW+Fa+d/Kb9KXPiPulTlr8pn0nc+I+6V6xtTUbTkKoGp3PJFHNj/LrOBO7H2xy3y5sLCrWcU6KNUcjOB1Ac2JOwA7TtJqjZWVuwavdVatUfoWYBCHq/zh8L/CreM0LzivoG3twadv+l1PcEfpVCOfcvIeO8iZZC8nppaEKtWxa6A2D3FenVqEd9QUA3V2zJOOcKqABLenYv8ArVKK31MeJBVh46G8JRIgWLpFTvQqNWqLWticUalEqbZiBnCqoCo3P0SqttyldkhwzilSgzGmQVYaatJhrp1l/VZDzHfzHMEGdvEbSmV+UWwbzWQKtInU9sx5KT+kh/Rb3HfmEUJ9NeSf6Gs/Cp+dUnzKJ9NeSX6Gs/Cp+dUhP2XKIiEEREBERAREQEREBERA1rrq/wAdkr9z89U8E/DLBc8x4H4Sv3Hz1XwT8M5OT3Vth4jGcziczNuynAnEygcib1l6p9r4CaAm9Zeqfa+AkXwrXzz5Sx/pO59ofcJX676UFJds4aqe1upfBfvJln8oS54pXPY2fqVcfaRKhVG5no4T0bcmV9WnXERICIiAm1ZXRpvqG4IKunVUU80buP2bHmJqxA2bykqtlSSjDUhPPB6j3g5B8J9IeST6Gs/9p+dUnzcu6FT1ekvd+sPq390+kPJH9DWf+0/OeLNC6REQEREBERAREQEREBERA1brmvgfhK/c/PVf3PwywXXNfA/CV64+fq/ufhnHye6t8PEInE5lGzmJxOYGU3rH1f3vgJHyQsfU/e+AkXwrXhPT1M8Quz/fA/8AisptdJeemKar+79tR9aLMqXRGq9q1yKSmnjK9ZZQH1OCOQHmzsTncdoz6ksnHGH0/wBNebPK7kkuu/y88InBm1d0NLMvYdvDqlx6MdDBc0lbQ9V2XWQrBQikgDnjJ3/xgmV1tnn6LZfMulDiSnHuG+YrFASVKhlJ54ORv35Bk50D6FHiDVmaqLehSCh6hXUSzk6VAJA6jk522232izSNzW1QMAS6dPOgdXh3m3FQXFCoSoqafNlHG+hlyeY3BB3wdhjer8OsXrVFp0xlj27AAcyT1CRFpLlZJ3tYW43n0d5JBjg9qOxqo+qvUnht30erUAGbSy5wWUk6ezOQJ7n5KPom39ut+fUl7ZcZYjLDLjzuOU1VziIlAiIgIiICIiAiIgIiIGrdc18D8JXq/wA/W/c/DLDdc18D8JXa/wDSK37n4Jx5+6t8PEIiJRs5icTmBzJCx9X3/wApHSRsfU9/8pF8K14z0kTN7eHsqL+BZs2fSREs3tmooW0NTV+Xo1NRdic5zqFPHVhOqdvEKGu8v+6on5azSu/NaQr29M9rhmVjsBtpx2deeeTmexOOZcWLh4Prf6HLyY5Y7lsv+Yo96upmYcidp6X0KvaJtFpVHq01zTYumSytRf1CvYQxbPVgc9pRa1rNi0qW6IA6XCvgh6lNymfSYqcZxkAjmDy5dciyRTLO8mVyvm3bHyg3Qq3rONiQSy51aCzu2nPcGH1y7eSBg1jxGiuWqa0fSBkkMuAQOvdTPNb2innH80Xanq9FnxrbtY47Tk+GM7yS4BdfJy1alcV7a6AYI6BWR00g6GUjclgOe2w2ziUvzCyZY3G+K9E8rFGovCLVK2POfK1OkHVgClV2z14yO7fA2xPPug5C3ia8BDgMTsNJddWT1DGZs9J+Itcsr1LurdMvo00emKYRWyWIKhVzlVz6IJ27MTT4Vajzgy4pYBKuVLDOw0kDq3P1SJx+ltxcuPFyS+JPh6V08t7daC+Z816ZKnQxcELpIJBJ079Q5dplm8lm3C6I/wDcrfnvPL/kWV1CtRceidA9FzkZI078jt3856n5MhjhtMdlasP/AL6kdFxw7/K/Pz48vLJjbZJrd83vat8REooREQEREBERAREQEREDVuea+B+Ertf+kVvBPwmWG65r4H4SvV/6RW8E/CZx5++t8PEIiJRsREQOZI2Hqe+RskrL1PeZF8IrzijS1XfEf2qflLNa9s+e0leD09V1xP8AbJ+Ss2bm17p6/Fl6JHj8uP6lqi3Nn3SNq2ndLtc2ndI2tZd0WrYq/wAQ4DUpU7eo+jFZC9NQdRCggAtjYE55dXXg7TCjwSq1CpcquaaOqVCOal/VYj9XO2e0iTdS1YgKSSozpUk4XPPA6s4nC0X0GmGYUywdkydJYDAYjrIBP1yq6Ap2ndN+3s+6SlKy7pI21lL4qZRrWNly2no3k5XFgB2XFwP94qStWlpLT5PxizYdl1cj/eakjmy3IcGOras8REwdRERAREQEREBERAREQNS65r4H4SvXHz9XwT8Jlgu+a+B+Er1x8/V8E/CZx5++t8PEcxESjYiIgJI2Xqe8yOkjY+p7zK3wiqXwFtNXi9TGdNVGx26bdTiaFV6oopcNXOuo5CUd91XIZ+eANQxpx1yV6N2+upxhBsWqooPZqtlHxkNWNXzaWr0D5xHJRtJ1ANnVTxjcFjnM7rb0z8PF+ql69/zaaSlrRHx6yhsdmRmaVPhdau9RaJRQhUNqIGosCQBt3Sx21kUp00bmqKreIAzIS5vja1qwalTqq+l6etdQDL1jv3P2Hx7uDd3qS3XbanPZMcblbJvvr8NAWDBnRwNaNpbBBB2yCD3gzlbHLKiqWdjhV7SeqSnCVaqKlZlVAzeioGAFVQoAHYMY905vk0PSqHUFDespCsp6ipO2evB2OCDtmXxxn9bWp+PtvXhtw23jl/3500W4eyOadRSrAZ0nB2PXkbGZXbCjTaoRqxgKvaScASRpXFSvcMzsHC0woITzeRqJBYam9I6jyONuQmPSClpoCpgsEqI7Ac9KsMzL6j03xq68T5df02GOfNjje8t/dG8H4rUaqlKvSNPXkI2ll9IDOMNz5dXdLh0HXFq4/wBbuv8AiasrB4nRr16C0nrVXN15301KijTVD/kxvjAOT75a+hgxQqj/AFy5/wCJqTm3bO7s+t4scM5ccOjc7z/qwxEQ4yIiAiIgIiICIiAiIgU/yg8RurejSrWqNU9MpUVQxIDLlWwoJxlcfvCV3orxurXeqLpHpVWwyKysmtEABK6gM4Lb45bT1AiVLpHwy+rMopraEI+u3raqlOrSbBB2wVIIJUjcMCdphyYd9xrhn20ziY0bO9CjXQpl+spVGk+AYZEz+S3X9n+qpTmPRl8NuvH5cRBtrr+zt/HR/wC6ceYuv7M/8dD/AL46Mvg68flzKv0o49eW1VEoU2qU3XUGUMcMCQykKD/dPvln+T3P9nqfx2//AHzsotcqSRb1QcY3NFh7wKkdFvmI6p9qqHQHi/8AndanVBpvcolREYFT52kpSomDvkppYdqqTPQHRu0Y/wDMonSbgV9eOrvapSqLjRXp1GRwFJKHO+GUkkEbjJ6iQe+3tOkIAUVlYD9KpRty3gWDjV448Z04Z9tWX9nNlj32ubU5r1KBPUpHVn/8laNt0i/XtT40qY/6keZ6R9lkfFFH3VJp1T+RTpWVaJ6wB4ZxOKltkYKqw6w24+qVkr0jH9XYH90/CrGvpGP6jhx9z/CrHUdNWWhahcgIiDsXrP1CdzUcgjAORgggEHuwecqvyjpEOdtw4+Arj/qGZrf8f67OyPg9cfAx1HTVhseG0abFko06RI9J1CKQOZG3VtOehLarMVeqrXr16fVlKleoyH3qVPvkC1lxe8HmLpbeytG2uGpM71ayn1qalvVBGxOOWd+qXq3oqiJTQBUVQqKOSqowAPcJG9r25W7yu67oiJKCIiAiIgIiICIiAiIgJxEQOYiJAREQE4iICIiSEREDmIiQEREDiJzEkIiICIiAiIgIiIH/2Q==',)),
        const SizedBox(height: 37),
        const Text("The Jungle Book",
            maxLines: 1,
            style: TextStyle(
                fontFamily: KGtSectraFine,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 2),
        const Opacity(
          opacity: .4,
          child: Text(
            "Rudyard Kipling",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 11),
        const RatingBook(mainAxis: MainAxisAlignment.center),
      ],
    );
  }
}
