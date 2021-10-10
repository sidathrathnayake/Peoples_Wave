const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const one_time_transaction = new Schema ({
    transaction_from : {
        type: String,
        required : false,
    },
    transaction_to : {
        type: String,
        required : false,
    },
    transaction_amount : {
        type : String,
        required : false,
    },
    mobile_number : {
        type : String,
        required : false,
    },
    Remarks : {
        type : String,
        required : false,
    },
    transaction_date : {
        type : String,
        required : false,
    },
})

const same_bank_transaction = mongoose.model("one_time_transaction", one_time_transaction );
module.exports = same_bank_transaction;