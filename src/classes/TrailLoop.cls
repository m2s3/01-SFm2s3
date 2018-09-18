public class TrailLoop {
   
 
/*  This method was commented because of Trailhead exercise:  https://trailhead.salesforce.com/trails/build-efficient-applications-without-limits/modules/app-development-without-limits/units/app-development-without-limits-transactions
      
    //Here is a combined problem of a query that needs a filter
    //and a loop that continually calls out to the database   
    public static void AllBadThings(Account a) {
//        List<Task> allMyTasks = [Select Id, status, whatId From Task];
        List<Task> allMyTasks = [Select Id, status, whatId From Task where whatId = :a.Id ];
        for (Task t : allMyTasks) {
//            if (t.whatId == a.id) {
                  t.status = 'Completed';             
//                update t;
//           }
        }
        update allMyTasks;
    }

*/   
    
    public static void AllGoodThings(Account a) {
//        List<Task> allMyTasks = [Select Id, status, whatId From Task];
        List<Task> allMyTasks = [Select Id, status, whatId From Task where whatId = :a.Id ];
        for (Task t : allMyTasks) {
//            if (t.whatId == a.id) {
                  t.status = 'Completed';             
//                update t;
//           }
        }
        update allMyTasks;
    }    
}