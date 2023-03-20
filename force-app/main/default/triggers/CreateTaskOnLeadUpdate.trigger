trigger CreateTaskOnLeadUpdate on Lead (after update) {
    List<Task> taskList = new List<Task>();
    for (Lead lead : Trigger.new) {
        if (lead.IsConverted == false && lead.Status == 'Working - Contacted') {
            Task task = new Task();
            task.Subject = 'Follow up with Lead ' + lead.Name;
            task.WhatId = lead.Id;
            task.Priority = 'High';
            task.Status = 'Not Started';
            taskList.add(task);
        }
    }
    insert taskList;
}