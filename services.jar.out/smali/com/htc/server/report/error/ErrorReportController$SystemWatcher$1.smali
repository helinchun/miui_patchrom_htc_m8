.class Lcom/htc/server/report/error/ErrorReportController$SystemWatcher$1;
.super Ljava/lang/Object;
.source "ErrorReportController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;


# direct methods
.method constructor <init>(Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher$1;->this$1:Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 37
    iget-object v2, p0, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher$1;->this$1:Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;

    # getter for: Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;->access$000(Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "htc_error_report_auto_send"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/htc/server/report/error/ErrorReportPreference;->setDetectSystemFileChange(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ErrorReportController"

    const-string v3, "error when disable autosend"

    invoke-static {v2, v3, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
