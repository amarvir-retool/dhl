

function checkDateDifference() {
  const startDate = moment(date1.value);
  const endDate = moment(date2.value);
  const differenceInWeeks = endDate.diff(startDate, 'weeks');
  return differenceInWeeks >= 1;
}

return checkDateDifference();

