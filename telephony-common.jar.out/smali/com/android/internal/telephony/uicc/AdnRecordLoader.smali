.class public Lcom/android/internal/telephony/uicc/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecordLoader"

.field static final VDBG:Z


# instance fields
.field mAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mEf:I

.field mExtensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mPendingExtLoads:I

.field mPin2:Ljava/lang/String;

.field mRecordNumber:I

.field mResult:Ljava/lang/Object;

.field mUserResponse:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 67
    return-void
.end method

.method private getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 70
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 71
    const-string v0, "3F007F10"

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 292
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 295
    :cond_1
    :goto_1
    return-void

    .line 152
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 153
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v8, v0

    .line 155
    .local v8, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 156
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v11

    .line 277
    .local v11, "exc":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    goto :goto_1

    .line 160
    .end local v11    # "exc":Ljava/lang/RuntimeException;
    .restart local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v13, v0

    .line 166
    .local v13, "recordSize":[I
    array-length v1, v13

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    const/4 v2, 0x2

    aget v2, v13, v2

    if-le v1, v2, :cond_4

    .line 167
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 171
    :cond_4
    const/4 v1, 0x0

    aget v1, v13, v1

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    move-result-object v5

    .line 173
    .local v5, "data":[B
    if-nez v5, :cond_5

    .line 174
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 179
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 182
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 186
    .end local v5    # "data":[B
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "recordSize":[I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 187
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 188
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 191
    :cond_6
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 195
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 196
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v5, v0

    .line 198
    .restart local v5    # "data":[B
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 199
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 209
    :cond_7
    new-instance v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    invoke-direct {v8, v1, v2, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 210
    .restart local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 212
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v3, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 226
    .end local v5    # "data":[B
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 227
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v5, v0

    .line 228
    .restart local v5    # "data":[B
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v8, v0

    .line 230
    .restart local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    .line 231
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 234
    :cond_8
    const-string v1, "AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADN extension EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendExtRecord([B)V

    .line 241
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 247
    .end local v5    # "data":[B
    .end local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 248
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0

    .line 250
    .local v10, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 254
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 255
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 256
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 258
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, "s":I
    :goto_2
    if-ge v12, v14, :cond_0

    .line 259
    new-instance v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    add-int/lit8 v3, v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v8, v2, v3, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 260
    .restart local v8    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 267
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 269
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v3, v8, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 258
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 3
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 102
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 103
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 104
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 113
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 3
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 85
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 86
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 87
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 92
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 130
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 131
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 132
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 133
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 134
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    .line 138
    return-void
.end method
