.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFeederThread"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

.field mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8397
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 8388
    const-string v0, "StreamFeederThread"

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    .line 8398
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 8399
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 8400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 8401
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 8405
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8406
    .local v15, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    const/16 v17, 0x0

    .line 8408
    .local v17, "status":I
    const/16 v2, 0xb1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2200(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 8411
    new-instance v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2200(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/content/pm/PackageInfo;ZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    .line 8412
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v11, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    .line 8414
    .local v11, "eThread":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v12, v2, v3

    .line 8415
    .local v12, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v18, v2, v3

    .line 8416
    .local v18, "tReadEnd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v19, v2, v3

    .line 8418
    .local v19, "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    const v9, 0x8000

    .line 8419
    .local v9, "bufferSize":I
    new-array v8, v9, [B

    .line 8420
    .local v8, "buffer":[B
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8421
    .local v13, "engineOut":Ljava/io/FileOutputStream;
    new-instance v21, Ljava/io/FileInputStream;

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8424
    .local v21, "transportIn":Ljava/io/FileInputStream;
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "unified-restore-engine"

    invoke-direct {v2, v11, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 8427
    :cond_0
    :goto_0
    if-nez v17, :cond_7

    .line 8429
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2300(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v16

    .line 8430
    .local v16, "result":I
    if-lez v16, :cond_5

    .line 8433
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_1

    .line 8434
    const-string v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  <- transport provided chunk size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8436
    :cond_1
    move/from16 v0, v16

    if-le v0, v9, :cond_2

    .line 8437
    move/from16 v9, v16

    .line 8438
    new-array v8, v9, [B

    .line 8440
    :cond_2
    move/from16 v20, v16

    .line 8441
    .local v20, "toCopy":I
    :cond_3
    :goto_1
    if-lez v20, :cond_0

    .line 8442
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v8, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    .line 8443
    .local v14, "n":I
    const/4 v2, 0x0

    invoke-virtual {v13, v8, v2, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 8444
    sub-int v20, v20, v14

    .line 8445
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_3

    .line 8446
    const-string v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  -> wrote "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to engine, left="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 8467
    .end local v14    # "n":I
    .end local v16    # "result":I
    .end local v20    # "toCopy":I
    :catch_0
    move-exception v10

    .line 8471
    .local v10, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "StreamFeederThread"

    const-string v3, "Unable to route data for restore"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8472
    const/16 v2, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2200(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "I/O error on pipes"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8474
    const/16 v17, -0x3eb

    .line 8486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8491
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8493
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_4

    .line 8494
    const-string v2, "StreamFeederThread"

    const-string v3, "engine thread finished; proceeding"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8498
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8502
    if-nez v17, :cond_d

    .line 8504
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    # setter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2402(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 8531
    .end local v10    # "e":Ljava/io/IOException;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-virtual {v2, v15}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8532
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 8534
    :goto_3
    return-void

    .line 8449
    .restart local v16    # "result":I
    :cond_5
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    .line 8451
    :try_start_2
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_6

    .line 8452
    const-string v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got clean full-restore EOF for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2200(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8455
    :cond_6
    const/16 v17, 0x0

    .line 8466
    .end local v16    # "result":I
    :cond_7
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "StreamFeederThread"

    const-string v3, "Done copying to engine, falling through"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8486
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8491
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8493
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_9

    .line 8494
    const-string v2, "StreamFeederThread"

    const-string v3, "engine thread finished; proceeding"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8498
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8502
    if-nez v17, :cond_b

    .line 8504
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    # setter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2402(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 8531
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-virtual {v2, v15}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8532
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    goto/16 :goto_3

    .line 8460
    .restart local v16    # "result":I
    :cond_a
    :try_start_3
    const-string v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " streaming restore for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2200(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8462
    const/16 v2, 0xb0f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8463
    move/from16 v17, v16

    goto/16 :goto_0

    .line 8513
    .end local v16    # "result":I
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2300(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 8522
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2200(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8525
    const/16 v2, -0x3e8

    move/from16 v0, v17

    if-ne v0, v2, :cond_c

    .line 8526
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_4

    .line 8514
    :catch_1
    move-exception v10

    .line 8517
    .local v10, "e":Landroid/os/RemoteException;
    const/16 v17, -0x3e8

    goto :goto_5

    .line 8528
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_c
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_4

    .line 8513
    .local v10, "e":Ljava/io/IOException;
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2300(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 8522
    .end local v10    # "e":Ljava/io/IOException;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2200(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8525
    const/16 v2, -0x3e8

    move/from16 v0, v17

    if-ne v0, v2, :cond_e

    .line 8526
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto/16 :goto_2

    .line 8514
    .restart local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 8517
    .local v10, "e":Landroid/os/RemoteException;
    const/16 v17, -0x3e8

    goto :goto_6

    .line 8528
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_e
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto/16 :goto_2

    .line 8475
    :catch_3
    move-exception v10

    .line 8479
    .restart local v10    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v2, "StreamFeederThread"

    const-string v3, "Transport failed during restore"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8480
    const/16 v2, 0xb0f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 8481
    const/16 v17, -0x3e8

    .line 8486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8491
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8493
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_f

    .line 8494
    const-string v2, "StreamFeederThread"

    const-string v3, "engine thread finished; proceeding"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8498
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8502
    if-nez v17, :cond_10

    .line 8504
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    # setter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2402(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 8531
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-virtual {v2, v15}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8532
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    goto/16 :goto_3

    .line 8513
    :cond_10
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2300(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 8522
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2200(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8525
    const/16 v2, -0x3e8

    move/from16 v0, v17

    if-ne v0, v2, :cond_11

    .line 8526
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_7

    .line 8514
    :catch_4
    move-exception v10

    .line 8517
    const/16 v17, -0x3e8

    goto :goto_8

    .line 8528
    :cond_11
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_7

    .line 8486
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8491
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8493
    sget-boolean v3, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v3, :cond_12

    .line 8494
    const-string v3, "StreamFeederThread"

    const-string v4, "engine thread finished; proceeding"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8498
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8502
    if-nez v17, :cond_13

    .line 8504
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    # setter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2402(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 8531
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-virtual {v3, v15}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8532
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    throw v2

    .line 8513
    :cond_13
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2300(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    .line 8522
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->access$2200(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8525
    const/16 v3, -0x3e8

    move/from16 v0, v17

    if-ne v0, v3, :cond_14

    .line 8526
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_9

    .line 8514
    :catch_5
    move-exception v10

    .line 8517
    .restart local v10    # "e":Landroid/os/RemoteException;
    const/16 v17, -0x3e8

    goto :goto_a

    .line 8528
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_14
    sget-object v15, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_9
.end method
