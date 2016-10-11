.class final Lcom/android/server/am/HtcErrorDialogBase;
.super Ljava/lang/Object;
.source "HtcErrorDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;,
        Lcom/android/server/am/HtcErrorDialogBase$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcErrorDialogBase"


# instance fields
.field private mAlertDlg:Landroid/app/AlertDialog;

.field private final mAlertDlgBuilder:Landroid/app/AlertDialog$Builder;

.field private final mCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/HtcErrorDialogBase$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/am/HtcErrorDialogBase$Callback;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/android/server/am/HtcErrorDialogBase$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/HtcErrorDialogBase$1;-><init>(Lcom/android/server/am/HtcErrorDialogBase;)V

    iput-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HtcErrorDialogBase constructor need a valid Context parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/server/am/HtcErrorDialogBase;->mCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mContext:Landroid/content/Context;

    const v2, 0x1030478

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Landroid/app/AlertDialog$Builder;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcErrorDialogBase;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcErrorDialogBase;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcErrorDialogBase;)Lcom/android/server/am/HtcErrorDialogBase$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcErrorDialogBase;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    return-object v0
.end method

.method private addPrivateFlagByAttr(I)V
    .locals 2
    .param p1, "privateFlag"    # I

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 117
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 118
    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 119
    return-void
.end method

.method static getSenseVersion()D
    .locals 9

    .prologue
    .line 142
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 144
    .local v4, "sense":D
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    .line 145
    .local v1, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v1, :cond_0

    .line 146
    const-string v6, "system"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 147
    .local v2, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v2, :cond_0

    .line 148
    const-string v6, "sense_version"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "strSense":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 155
    .end local v1    # "manager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v2    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v3    # "strSense":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v4

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "HtcErrorDialogBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "version parse error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sense: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setTitleByAttr(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 111
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 113
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 98
    :cond_0
    return-void
.end method

.method public removeMessages(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    return-void
.end method

.method public sendMessageDelayed(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 102
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 69
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 65
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msgId"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;-><init>(Lcom/android/server/am/HtcErrorDialogBase;I)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msgId"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;-><init>(Lcom/android/server/am/HtcErrorDialogBase;I)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msgId"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;-><init>(Lcom/android/server/am/HtcErrorDialogBase;I)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    return-void
.end method

.method public show(Ljava/lang/String;III)V
    .locals 3
    .param p1, "windowTitle"    # Ljava/lang/String;
    .param p2, "windowType"    # I
    .param p3, "additionalWindowFlags"    # I
    .param p4, "additionalPrivateFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 72
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    .line 75
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 76
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 80
    const-string v0, "Error Dialog"

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcErrorDialogBase;->setTitleByAttr(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p4}, Lcom/android/server/am/HtcErrorDialogBase;->addPrivateFlagByAttr(I)V

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcErrorDialogBase;->setTitleByAttr(Ljava/lang/String;)V

    .line 87
    :cond_0
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Window;->setType(I)V

    .line 89
    :cond_1
    if-eqz p3, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->addFlags(I)V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 92
    return-void
.end method
