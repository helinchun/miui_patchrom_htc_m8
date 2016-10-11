.class final Lcom/android/server/media/MediaRouterService$UserHandler;
.super Landroid/os/Handler;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;
.implements Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UserHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;,
        Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    }
.end annotation


# static fields
.field private static final MSG_CONNECTION_TIMED_OUT:I = 0x9

.field public static final MSG_REQUEST_SET_VOLUME:I = 0x6

.field public static final MSG_REQUEST_UPDATE_VOLUME:I = 0x7

.field public static final MSG_SELECT_ROUTE:I = 0x4

.field public static final MSG_START:I = 0x1

.field public static final MSG_STOP:I = 0x2

.field public static final MSG_UNSELECT_ROUTE:I = 0x5

.field private static final MSG_UPDATE_CLIENT_STATE:I = 0x8

.field public static final MSG_UPDATE_DISCOVERY_REQUEST:I = 0x3

.field private static final PHASE_CONNECTED:I = 0x2

.field private static final PHASE_CONNECTING:I = 0x1

.field private static final PHASE_NOT_AVAILABLE:I = -0x1

.field private static final PHASE_NOT_CONNECTED:I = 0x0

.field private static final TIMEOUT_REASON_CONNECTION_LOST:I = 0x2

.field private static final TIMEOUT_REASON_NOT_AVAILABLE:I = 0x1

.field private static final TIMEOUT_REASON_WAITING_FOR_CONNECTED:I = 0x4

.field private static final TIMEOUT_REASON_WAITING_FOR_CONNECTING:I = 0x3


# instance fields
.field private mClientStateUpdateScheduled:Z

.field private mConnectionPhase:I

.field private mConnectionTimeoutReason:I

.field private mConnectionTimeoutStartTime:J

.field private mDiscoveryMode:I

.field private mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

.field private final mProviderRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mService:Lcom/android/server/media/MediaRouterService;

.field private final mTempClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/IMediaRouterClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

.field private final mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/media/MediaRouterService;
    .param p2, "userRecord"    # Lcom/android/server/media/MediaRouterService$UserRecord;

    .prologue
    .line 712
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 704
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 706
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 713
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 714
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 715
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;

    # getter for: Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->access$000(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 717
    return-void
.end method

.method private checkGloballySelectedRouteState()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 935
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-nez v1, :cond_0

    .line 936
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 937
    invoke-direct {p0, v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 980
    :goto_0
    return-void

    .line 942
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 944
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    goto :goto_0

    .line 949
    :cond_2
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 950
    .local v0, "oldPhase":I
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->getConnectionPhase(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 951
    if-lt v0, v2, :cond_3

    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    if-ge v1, v2, :cond_3

    .line 952
    invoke-direct {p0, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    goto :goto_0

    .line 957
    :cond_3
    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    packed-switch v1, :pswitch_data_0

    .line 977
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    goto :goto_0

    .line 959
    :pswitch_0
    if-eq v0, v3, :cond_4

    .line 960
    const-string v1, "MediaRouterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to global route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    goto :goto_0

    .line 966
    :pswitch_1
    if-eq v0, v2, :cond_5

    .line 967
    const-string v1, "MediaRouterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to global route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_5
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    goto :goto_0

    .line 973
    :pswitch_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    goto :goto_0

    .line 957
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private connectionTimedOut()V
    .locals 6

    .prologue
    .line 1009
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-nez v0, :cond_1

    .line 1011
    :cond_0
    const-string v0, "MediaRouterService"

    const-string v1, "Handled connection timeout for no reason."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :goto_0
    return-void

    .line 1015
    :cond_1
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    packed-switch v0, :pswitch_data_0

    .line 1036
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 1038
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectGloballySelectedRoute()V

    goto :goto_0

    .line 1017
    :pswitch_0
    const-string v0, "MediaRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global route no longer available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1021
    :pswitch_1
    const-string v0, "MediaRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global route connection lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1025
    :pswitch_2
    const-string v0, "MediaRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global route timed out while waiting for connection attempt to begin after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1031
    :pswitch_3
    const-string v0, "MediaRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global route timed out while connecting after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1015
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I
    .locals 4
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .prologue
    .line 1099
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1100
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1101
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1102
    .local v2, "record":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1106
    .end local v1    # "i":I
    .end local v2    # "record":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    :goto_1
    return v1

    .line 1100
    .restart local v1    # "i":I
    .restart local v2    # "record":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1106
    .end local v2    # "record":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .locals 4
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 1110
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1111
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1112
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    move-result-object v2

    .line 1113
    .local v2, "record":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    if-eqz v2, :cond_0

    .line 1117
    .end local v2    # "record":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :goto_1
    return-object v2

    .line 1111
    .restart local v2    # "record":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1117
    .end local v2    # "record":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getConnectionPhase(I)I
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 1121
    packed-switch p0, :pswitch_data_0

    .line 1133
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1124
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1126
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1129
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private requestSetVolume(Ljava/lang/String;I)V
    .locals 1
    .param p1, "routeId"    # Ljava/lang/String;
    .param p2, "volume"    # I

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayVolume(I)V

    .line 874
    :cond_0
    return-void
.end method

.method private requestUpdateVolume(Ljava/lang/String;I)V
    .locals 1
    .param p1, "routeId"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->adjustDisplayVolume(I)V

    .line 881
    :cond_0
    return-void
.end method

.method private scheduleUpdateClientState()V
    .locals 1

    .prologue
    .line 1042
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    if-nez v0, :cond_0

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 1044
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 1046
    :cond_0
    return-void
.end method

.method private selectRoute(Ljava/lang/String;)V
    .locals 4
    .param p1, "routeId"    # Ljava/lang/String;

    .prologue
    .line 833
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 836
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    move-result-object v0

    .line 837
    .local v0, "routeRecord":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    if-eqz v0, :cond_1

    .line 838
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectGloballySelectedRoute()V

    .line 840
    const-string v1, "MediaRouterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected global route:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 842
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkGloballySelectedRouteState()V

    .line 843
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 845
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 848
    .end local v0    # "routeRecord":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1
    return-void
.end method

.method private start()V
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    if-nez v0, :cond_0

    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 788
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->start()V

    .line 790
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    if-eqz v0, :cond_0

    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 795
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectGloballySelectedRoute()V

    .line 796
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->stop()V

    .line 798
    :cond_0
    return-void
.end method

.method private unselectGloballySelectedRoute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 859
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_0

    .line 860
    const-string v0, "MediaRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unselected global route:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 862
    iput-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 863
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkGloballySelectedRouteState()V

    .line 865
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 867
    :cond_0
    return-void
.end method

.method private unselectRoute(Ljava/lang/String;)V
    .locals 1
    .param p1, "routeId"    # Ljava/lang/String;

    .prologue
    .line 851
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectGloballySelectedRoute()V

    .line 856
    :cond_0
    return-void
.end method

.method private updateClientState()V
    .locals 9

    .prologue
    .line 1049
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 1051
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v6}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "globallySelectedRouteId":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/media/MediaRouterClientState;

    invoke-direct {v4}, Landroid/media/MediaRouterClientState;-><init>()V

    .line 1056
    .local v4, "trustedState":Landroid/media/MediaRouterClientState;
    iput-object v1, v4, Landroid/media/MediaRouterClientState;->globallySelectedRouteId:Ljava/lang/String;

    .line 1057
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1058
    .local v3, "providerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1059
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v6, v4}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->appendClientState(Landroid/media/MediaRouterClientState;)V

    .line 1058
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1051
    .end local v1    # "globallySelectedRouteId":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "providerCount":I
    .end local v4    # "trustedState":Landroid/media/MediaRouterClientState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1064
    .restart local v1    # "globallySelectedRouteId":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "providerCount":I
    .restart local v4    # "trustedState":Landroid/media/MediaRouterClientState;
    :cond_1
    new-instance v5, Landroid/media/MediaRouterClientState;

    invoke-direct {v5}, Landroid/media/MediaRouterClientState;-><init>()V

    .line 1065
    .local v5, "untrustedState":Landroid/media/MediaRouterClientState;
    iput-object v1, v5, Landroid/media/MediaRouterClientState;->globallySelectedRouteId:Ljava/lang/String;

    .line 1066
    if-eqz v1, :cond_2

    .line 1067
    iget-object v6, v5, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Landroid/media/MediaRouterClientState;->getRoute(Ljava/lang/String;)Landroid/media/MediaRouterClientState$RouteInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    # getter for: Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1073
    :try_start_1
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iput-object v4, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mTrustedState:Landroid/media/MediaRouterClientState;

    .line 1074
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iput-object v5, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mUntrustedState:Landroid/media/MediaRouterClientState;

    .line 1077
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1078
    .local v0, "count":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 1079
    iget-object v8, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaRouterService$ClientRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1081
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1084
    :try_start_2
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 1085
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    .line 1087
    :try_start_3
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/IMediaRouterClient;

    invoke-interface {v6}, Landroid/media/IMediaRouterClient;->onStateChanged()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1085
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1081
    .end local v0    # "count":I
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1094
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    throw v6

    .restart local v0    # "count":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1096
    return-void

    .line 1088
    :catch_0
    move-exception v6

    goto :goto_4
.end method

.method private updateConnectionTimeout(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/16 v2, 0x9

    .line 983
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eq p1, v0, :cond_1

    .line 984
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->removeMessages(I)V

    .line 987
    :cond_0
    iput p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 988
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    .line 989
    packed-switch p1, :pswitch_data_0

    .line 1006
    :cond_1
    :goto_0
    return-void

    .line 994
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 998
    :pswitch_1
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1002
    :pswitch_2
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 989
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateDiscoveryRequest()V
    .locals 8

    .prologue
    .line 801
    const/4 v5, 0x0

    .line 802
    .local v5, "routeTypes":I
    const/4 v0, 0x0

    .line 803
    .local v0, "activeScan":Z
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    # getter for: Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 804
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 805
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 806
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 807
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    iget v6, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    or-int/2addr v5, v6

    .line 808
    iget-boolean v6, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    or-int/2addr v0, v6

    .line 805
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 810
    .end local v1    # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_2

    .line 814
    if-eqz v0, :cond_1

    .line 815
    const/4 v4, 0x2

    .line 823
    .local v4, "newDiscoveryMode":I
    :goto_1
    iget v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    if-eq v6, v4, :cond_3

    .line 824
    iput v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 825
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 826
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    .line 827
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v6}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v6

    iget v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {v6, v7}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 826
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 810
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "newDiscoveryMode":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 817
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    :cond_1
    const/4 v4, 0x1

    .restart local v4    # "newDiscoveryMode":I
    goto :goto_1

    .line 820
    .end local v4    # "newDiscoveryMode":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "newDiscoveryMode":I
    goto :goto_1

    .line 830
    :cond_3
    return-void
.end method

.method private updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;
    .param p2, "state"    # Landroid/media/RemoteDisplayState;

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    move-result v0

    .line 919
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 920
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 921
    .local v1, "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    invoke-virtual {v1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkGloballySelectedRouteState()V

    .line 923
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 926
    .end local v1    # "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    :cond_0
    return-void
.end method


# virtual methods
.method public addProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .prologue
    .line 885
    invoke-virtual {p1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    .line 886
    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {p1, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 887
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 889
    new-instance v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    .line 890
    .local v0, "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getDisplayState()Landroid/media/RemoteDisplayState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 893
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 894
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Handler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "indent":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mDiscoveryMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mGloballySelectedRouteRecord="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mConnectionPhase="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mConnectionTimeoutReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mConnectionTimeoutStartTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eqz v3, :cond_0

    iget-wide v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 775
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 776
    .local v2, "providerCount":I
    if-eqz v2, :cond_1

    .line 777
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 778
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 770
    .end local v0    # "i":I
    .end local v2    # "providerCount":I
    :cond_0
    const-string v3, "<n/a>"

    goto :goto_0

    .line 781
    .restart local v2    # "providerCount":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<no providers>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 721
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 759
    :goto_0
    return-void

    .line 723
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->start()V

    goto :goto_0

    .line 727
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->stop()V

    goto :goto_0

    .line 731
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateDiscoveryRequest()V

    goto :goto_0

    .line 735
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->selectRoute(Ljava/lang/String;)V

    goto :goto_0

    .line 739
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectRoute(Ljava/lang/String;)V

    goto :goto_0

    .line 743
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestSetVolume(Ljava/lang/String;I)V

    goto :goto_0

    .line 747
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestUpdateVolume(Ljava/lang/String;I)V

    goto :goto_0

    .line 751
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateClientState()V

    goto :goto_0

    .line 755
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->connectionTimedOut()V

    goto :goto_0

    .line 721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V
    .locals 0
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;
    .param p2, "state"    # Landroid/media/RemoteDisplayState;

    .prologue
    .line 913
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V

    .line 914
    return-void
.end method

.method public removeProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .prologue
    const/4 v3, 0x0

    .line 898
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    move-result v0

    .line 899
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 900
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 901
    .local v1, "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    invoke-virtual {v1, v3}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 902
    invoke-virtual {p1, v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    .line 903
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 905
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkGloballySelectedRouteState()V

    .line 906
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 908
    .end local v1    # "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    :cond_0
    return-void
.end method
