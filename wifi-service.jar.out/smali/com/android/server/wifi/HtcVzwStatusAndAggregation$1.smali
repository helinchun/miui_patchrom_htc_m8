.class Lcom/android/server/wifi/HtcVzwStatusAndAggregation$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcVzwStatusAndAggregation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->setVzwStatusReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcVzwStatusAndAggregation;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$1;->this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/wifi/HtcVzwStatusAndAggregation$1;->this$0:Lcom/android/server/wifi/HtcVzwStatusAndAggregation;

    invoke-virtual {v0}, Lcom/android/server/wifi/HtcVzwStatusAndAggregation;->setInitialVzwStatus()V

    .line 81
    return-void
.end method
