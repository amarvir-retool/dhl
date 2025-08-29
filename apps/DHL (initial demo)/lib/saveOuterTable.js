
let data = table10.data.map(item => {
  const monthKey = item.mhe_time;
  const monthChanges = table10.changesetObject ? table10.changesetObject[monthKey] : null;  
  
  return {
    ...item,
    adj_mhe: monthChanges?.adj_mhe ?? item.adj_mhe,
    app_mhe: monthChanges?.app_mhe ?? item.app_mhe
  };
});

configurationTable.setValue(data);

table10.clearChangeset();