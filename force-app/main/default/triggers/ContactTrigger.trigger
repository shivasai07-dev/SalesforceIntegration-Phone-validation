trigger ContactTrigger on Contact (after insert) {
    if(Trigger.isAfter && Trigger.isInsert) {
        validatephone_API.afterInsertphone(Trigger.new);
    }

}