class ChartTranslations {
  final String date;
  final String open;
  final String high;
  final String low;
  final String close;
  final String changeAmount;
  final String change;
  final String amount;

  const ChartTranslations({
    this.date = 'Ngày',
    this.open = 'Mở',
    this.high = 'Cao',
    this.low = 'Thấp',
    this.close = 'Đóng',
    this.changeAmount = 'Thay đổi',
    this.change = '% Thay đổi',
    this.amount = 'Khối lượng',
  });

  String byIndex(int index) {
    switch (index) {
      case 0:
        return date;
      case 1:
        return open;
      case 2:
        return high;
      case 3:
        return low;
      case 4:
        return close;
      case 5:
        return changeAmount;
      case 6:
        return change;
      case 7:
        return amount;
    }

    throw UnimplementedError();
  }
}

const kChartTranslations = {
  'zh_CN': ChartTranslations(
    date: '时间',
    open: '开',
    high: '高',
    low: '低',
    close: '收',
    changeAmount: '涨跌额',
    change: '涨跌幅',
    amount: '成交额',
  ),
};
