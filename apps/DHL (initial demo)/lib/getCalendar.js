const data = {
    'mhe_time': "",
    'adj_mhe': 0,
    'app_mhe': 0
}

function getCalendarWeeksByMonth(startDate, endDate) {
  const result = {};

  let current = new Date(startDate);
  current.setDate(current.getDate() - ((current.getDay() + 6) % 7)); // backtrack to Monday

  while (current <= endDate) {
    const weekStart = new Date(current);
    const weekEnd = new Date(current);
    weekEnd.setDate(weekEnd.getDate() + 6);

    const weekNumber = getISOWeekNumber(weekStart);
    const formatted = `Calendar Week ${weekNumber} (${formatDate(weekStart)} - ${formatDate(weekEnd)})`;

    const monthsInWeek = getMonthsInRange(weekStart, weekEnd);
    for (const monthKey of monthsInWeek) {
      if (!result[monthKey]) result[monthKey] = [];
      result[monthKey].push({ ...data, mhe_time: formatted });
    }

    current.setDate(current.getDate() + 7); // next week
  }

  return result;
}

function getISOWeekNumber(date) {
  const d = new Date(date.getTime());
  d.setHours(0, 0, 0, 0);
  d.setDate(d.getDate() + 3 - ((d.getDay() + 6) % 7));
  const week1 = new Date(d.getFullYear(), 0, 4);
  return 1 + Math.round(((d - week1) / 86400000 - 3 + ((week1.getDay() + 6) % 7)) / 7);
}

function formatDate(date) {
  return date.toLocaleDateString('en-GB', {
    day: '2-digit',
    month: 'short',
    year: 'numeric'
  });
}

function getMonthsInRange(start, end) {
  const months = new Set();
  let current = new Date(start);
  while (current <= end) {
    const key = current.toLocaleString('default', { month: 'long', year: 'numeric' });
    months.add(key);
    current.setDate(current.getDate() + 1);
  }
  return [...months];
}

return getCalendarWeeksByMonth(new Date("2024-01-01"), new Date("2024-11-30"));