.class public final Landroid/media/TimedText$Region;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Region"
.end annotation


# instance fields
.field public final afterEdge:I

.field public final backgroundColor:Ljava/lang/String;

.field public final beforeEdge:I

.field public final cellColumn:I

.field public final cellRow:I

.field public final cellhExtent:F

.field public final cellwExtent:F

.field public final cellxOrigin:F

.field public final cellyOrigin:F

.field public final displayAlign:Ljava/lang/String;

.field public final endEdge:I

.field public final hExtent:I

.field public final isCell:Z

.field public final regionID:Ljava/lang/String;

.field public final startEdge:I

.field public final wExtent:I

.field public final xOrigin:I

.field public final yOrigin:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIFFFFIIZ)V
    .locals 1
    .param p1, "regionID"    # Ljava/lang/String;
    .param p2, "backgroundColor"    # Ljava/lang/String;
    .param p3, "displayAlign"    # Ljava/lang/String;
    .param p4, "xOrigin"    # I
    .param p5, "yOrigin"    # I
    .param p6, "hExtent"    # I
    .param p7, "wExtent"    # I
    .param p8, "beforeEdge"    # I
    .param p9, "afterEdge"    # I
    .param p10, "startEdge"    # I
    .param p11, "endEdge"    # I
    .param p12, "cellxOrigin"    # F
    .param p13, "cellyOrigin"    # F
    .param p14, "cellhExtent"    # F
    .param p15, "cellwExtent"    # F
    .param p16, "cellColumn"    # I
    .param p17, "cellRow"    # I
    .param p18, "isCell"    # Z

    .prologue
    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iput-object p1, p0, Landroid/media/TimedText$Region;->regionID:Ljava/lang/String;

    .line 947
    iput-object p2, p0, Landroid/media/TimedText$Region;->backgroundColor:Ljava/lang/String;

    .line 948
    iput-object p3, p0, Landroid/media/TimedText$Region;->displayAlign:Ljava/lang/String;

    .line 949
    iput p4, p0, Landroid/media/TimedText$Region;->xOrigin:I

    .line 950
    iput p5, p0, Landroid/media/TimedText$Region;->yOrigin:I

    .line 951
    iput p6, p0, Landroid/media/TimedText$Region;->hExtent:I

    .line 952
    iput p7, p0, Landroid/media/TimedText$Region;->wExtent:I

    .line 953
    iput p8, p0, Landroid/media/TimedText$Region;->beforeEdge:I

    .line 954
    iput p9, p0, Landroid/media/TimedText$Region;->afterEdge:I

    .line 955
    iput p10, p0, Landroid/media/TimedText$Region;->startEdge:I

    .line 956
    iput p11, p0, Landroid/media/TimedText$Region;->endEdge:I

    .line 957
    iput p12, p0, Landroid/media/TimedText$Region;->cellxOrigin:F

    .line 958
    iput p13, p0, Landroid/media/TimedText$Region;->cellyOrigin:F

    .line 959
    iput p14, p0, Landroid/media/TimedText$Region;->cellhExtent:F

    .line 960
    move/from16 v0, p15

    iput v0, p0, Landroid/media/TimedText$Region;->cellwExtent:F

    .line 961
    move/from16 v0, p16

    iput v0, p0, Landroid/media/TimedText$Region;->cellColumn:I

    .line 962
    move/from16 v0, p17

    iput v0, p0, Landroid/media/TimedText$Region;->cellRow:I

    .line 963
    move/from16 v0, p18

    iput-boolean v0, p0, Landroid/media/TimedText$Region;->isCell:Z

    .line 964
    return-void
.end method
