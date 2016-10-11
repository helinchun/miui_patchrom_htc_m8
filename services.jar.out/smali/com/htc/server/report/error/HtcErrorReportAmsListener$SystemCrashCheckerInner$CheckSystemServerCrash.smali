.class final Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;
.super Ljava/lang/Object;
.source "HtcErrorReportAmsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckSystemServerCrash"
.end annotation


# instance fields
.field private mCrashTimeFromZygote:J

.field private mEventType:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field private mMediaServerTombstoneName:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;

.field private mOomPid:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mTombstoneName:Ljava/lang/String;

.field final synthetic this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;


# direct methods
.method constructor <init>(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    iput-object p1, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v2, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTag:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMsg:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mEventType:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mOomPid:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/error_report/last_crash_msg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mFile:Ljava/io/File;

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mCrashTimeFromZygote:J

    .line 129
    iput-object v2, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTombstoneName:Ljava/lang/String;

    .line 130
    iput-object v2, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMediaServerTombstoneName:Ljava/lang/String;

    return-void
.end method

.method private isFromZygote()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    .line 160
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/system/error_report/last_terminate_msg"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "msgFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-gtz v6, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v5

    .line 165
    :cond_1
    const/4 v3, 0x0

    .line 167
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    const-string v6, "version=1"

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mCrashTimeFromZygote:J

    .line 170
    iget-wide v6, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mCrashTimeFromZygote:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mCrashTimeFromZygote:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    :cond_2
    if-eqz v4, :cond_3

    .line 178
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 186
    :cond_3
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/system/error_report/last_terminate_log"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, "logFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    .line 191
    const/4 v5, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "logFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "SystemCrashCheckerInner"

    const-string v7, "Error when close reader"

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 173
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v6, "SystemCrashCheckerInner"

    const-string v7, "Error when read crash time from /data/system/error_report/last_terminate_msg"

    invoke-static {v6, v7}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    if-eqz v3, :cond_0

    .line 178
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 179
    :catch_2
    move-exception v0

    .line 180
    const-string v6, "SystemCrashCheckerInner"

    const-string v7, "Error when close reader"

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_4

    .line 178
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 181
    :cond_4
    :goto_4
    throw v5

    .line 179
    :catch_3
    move-exception v0

    .line 180
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "SystemCrashCheckerInner"

    const-string v7, "Error when close reader"

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 172
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private parseEntryFile()Z
    .locals 5

    .prologue
    .line 134
    iget-object v3, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTag:Ljava/lang/String;

    .line 139
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMsg:Ljava/lang/String;

    .line 140
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mEventType:Ljava/lang/String;

    .line 141
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mOomPid:Ljava/lang/String;

    .line 142
    iget-object v3, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    const/4 v3, 0x1

    .line 147
    if-eqz v2, :cond_0

    .line 149
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return v3

    .line 144
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v3, "SystemCrashCheckerInner"

    const-string v4, "Error loading last system crash"

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    if-eqz v1, :cond_1

    .line 149
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    .line 147
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 149
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 151
    :cond_2
    :goto_4
    throw v3

    .line 150
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 147
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 144
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 196
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    # getter for: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$100(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    const/4 v4, 0x1

    # invokes: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->prepareFileForSystemTerminateCrash(Z)V
    invoke-static {v3, v4}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$300(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;Z)V

    .line 306
    :goto_0
    return-void

    .line 205
    :cond_1
    :try_start_1
    new-instance v18, Ljava/io/File;

    const-string v3, "/data/misc/"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v18, "entryDir":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    new-instance v3, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash$1;-><init>(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v19

    .line 214
    .local v19, "entrys":[Ljava/io/File;
    if-eqz v19, :cond_2

    .line 215
    move-object/from16 v14, v19

    .local v14, "arr$":[Ljava/io/File;
    array-length v0, v14

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    aget-object v17, v14, v23

    .line 216
    .local v17, "entry":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 215
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 222
    .end local v14    # "arr$":[Ljava/io/File;
    .end local v17    # "entry":Ljava/io/File;
    .end local v19    # "entrys":[Ljava/io/File;
    .end local v23    # "i$":I
    .end local v24    # "len$":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->parseEntryFile()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 223
    const-string v3, "SystemCrashCheckerInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detect system server crash type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " eventType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mEventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oomPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mOomPid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTag:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMsg:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mEventType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    .line 304
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    const/4 v4, 0x1

    # invokes: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->prepareFileForSystemTerminateCrash(Z)V
    invoke-static {v3, v4}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$300(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;Z)V

    goto/16 :goto_0

    .line 229
    :cond_4
    :try_start_2
    const-string v3, "finalizer_timeout"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mEventType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "watchdog"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mEventType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 230
    :cond_5
    const-string v3, "system_server"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMsg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/HtcErrorReportManager;->getTombstone(Ljava/lang/String;JJZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTombstoneName:Ljava/lang/String;

    .line 256
    :cond_6
    const-string v3, "SYSTEM_CRASH"

    invoke-static {v3}, Lcom/htc/server/report/up/HtcSystemUPLogger;->addErrorCount(Ljava/lang/String;)V

    .line 258
    new-instance v25, Landroid/app/ApplicationErrorReport;

    invoke-direct/range {v25 .. v25}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 259
    .local v25, "report":Landroid/app/ApplicationErrorReport;
    const-string v3, "android"

    move-object/from16 v0, v25

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 260
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 261
    const-string v3, "system_server"

    move-object/from16 v0, v25

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 262
    const/4 v3, 0x1

    move-object/from16 v0, v25

    iput-boolean v3, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 263
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput v3, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMsg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v25

    iput-wide v4, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 266
    new-instance v13, Landroid/content/Intent;

    const-string v3, "com.htc.updater.NOTIFY_SYSTEM_CRASH"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v13, "appErrorIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.htc.feedback"

    const-string v5, "com.htc.feedback.FeedbackReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 269
    const-string v3, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v25

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 270
    const-string v3, "dropboxTag"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTag:Ljava/lang/String;

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->getSecretKey()[B

    move-result-object v21

    .line 272
    .local v21, "errorReportKey":[B
    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->getIV()[B

    move-result-object v20

    .line 273
    .local v20, "errorReportIv":[B
    if-eqz v21, :cond_7

    if-eqz v20, :cond_7

    .line 274
    const-string v3, "errorReportKey"

    move-object/from16 v0, v21

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 275
    const-string v3, "errorReportIv"

    move-object/from16 v0, v20

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 277
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mOomPid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 278
    const-string v3, "oomPid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mOomPid:Ljava/lang/String;

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    # getter for: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$100(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "dropbox"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/DropBoxManager;

    .line 282
    .local v15, "dbox":Landroid/os/DropBoxManager;
    if-eqz v15, :cond_a

    .line 283
    const/16 v22, 0x8

    .line 284
    .local v22, "flags":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTombstoneName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTombstoneName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/tombstones/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTombstoneName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v3, v4, v0, v1}, Lcom/android/server/am/HtcErrorReportManager;->encryptFile(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/io/File;

    move-result-object v26

    .line 287
    .local v26, "tmpTSFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTombstoneName:Ljava/lang/String;

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v15, v3, v0, v1}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V

    .line 288
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 289
    const-string v3, "tombstoneName"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTombstoneName:Ljava/lang/String;

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    .end local v26    # "tmpTSFile":Ljava/io/File;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMediaServerTombstoneName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMediaServerTombstoneName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTombstoneName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMediaServerTombstoneName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/tombstones/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMediaServerTombstoneName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v3, v4, v0, v1}, Lcom/android/server/am/HtcErrorReportManager;->encryptFile(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/io/File;

    move-result-object v26

    .line 294
    .restart local v26    # "tmpTSFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMediaServerTombstoneName:Ljava/lang/String;

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v15, v3, v0, v1}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V

    .line 295
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 296
    const-string v3, "mediaServerTombstoneName"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMediaServerTombstoneName:Ljava/lang/String;

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    .end local v22    # "flags":I
    .end local v26    # "tmpTSFile":Ljava/io/File;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    # getter for: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$100(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v5, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v3, v13, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    const/4 v4, 0x1

    # invokes: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->prepareFileForSystemTerminateCrash(Z)V
    invoke-static {v3, v4}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$300(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;Z)V

    goto/16 :goto_0

    .line 232
    .end local v13    # "appErrorIntent":Landroid/content/Intent;
    .end local v15    # "dbox":Landroid/os/DropBoxManager;
    .end local v20    # "errorReportIv":[B
    .end local v21    # "errorReportKey":[B
    .end local v25    # "report":Landroid/app/ApplicationErrorReport;
    :cond_b
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->isFromZygote()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 233
    const-string v3, "SystemCrashCheckerInner"

    const-string v4, "isFromZygote=true"

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v3, "system_server"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mCrashTimeFromZygote:J

    const-wide/32 v6, 0x493e0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/HtcErrorReportManager;->getTombstone(Ljava/lang/String;JJZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTombstoneName:Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/htc/server/report/error/ReportConfig;->isShippingRom()Z

    move-result v3

    if-nez v3, :cond_c

    .line 237
    const-string v3, "mediaserver"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mCrashTimeFromZygote:J

    const-wide/32 v6, 0x1b7740

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/HtcErrorReportManager;->getTombstone(Ljava/lang/String;JJZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMediaServerTombstoneName:Ljava/lang/String;

    .line 240
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTombstoneName:Ljava/lang/String;

    if-nez v3, :cond_d

    const-string v2, "others"

    .line 241
    .local v2, "eventType":Ljava/lang/String;
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/error_report/last_terminate_log"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    # getter for: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$100(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    # getter for: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v12}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$200(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    invoke-static/range {v2 .. v12}, Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTC(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->parseEntryFile()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_e

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    const/4 v4, 0x1

    # invokes: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->prepareFileForSystemTerminateCrash(Z)V
    invoke-static {v3, v4}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$300(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;Z)V

    goto/16 :goto_0

    .line 240
    .end local v2    # "eventType":Ljava/lang/String;
    :cond_d
    :try_start_4
    const-string v2, "native_crash"

    goto :goto_2

    .line 249
    .restart local v2    # "eventType":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mTag:Ljava/lang/String;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->mMsg:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_6

    .line 304
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    const/4 v4, 0x1

    # invokes: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->prepareFileForSystemTerminateCrash(Z)V
    invoke-static {v3, v4}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$300(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;Z)V

    goto/16 :goto_0

    .end local v2    # "eventType":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    const/4 v4, 0x1

    # invokes: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->prepareFileForSystemTerminateCrash(Z)V
    invoke-static {v3, v4}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$300(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;Z)V

    goto/16 :goto_0

    .line 301
    .end local v18    # "entryDir":Ljava/io/File;
    :catch_0
    move-exception v16

    .line 302
    .local v16, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "SystemCrashCheckerInner"

    const-string v4, "Error in checking last system crash"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    const/4 v4, 0x1

    # invokes: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->prepareFileForSystemTerminateCrash(Z)V
    invoke-static {v3, v4}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$300(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;Z)V

    goto/16 :goto_0

    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    const/4 v5, 0x1

    # invokes: Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->prepareFileForSystemTerminateCrash(Z)V
    invoke-static {v4, v5}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->access$300(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;Z)V

    throw v3
.end method
