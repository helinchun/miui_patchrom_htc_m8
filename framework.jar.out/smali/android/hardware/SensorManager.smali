.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field protected static final TAG:Ljava/lang/String; = "SensorManager"

.field protected static final WHITE_SIGNATURE:[Ljava/lang/String;

.field private static final mTempMatrix:[F


# instance fields
.field private mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FA04B66B7A3DE5C054F4F6D47E761798584D79BB"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2E4BA2C41AA8807365142B6A24114CC054D12C46"

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/SensorManager;->WHITE_SIGNATURE:[Ljava/lang/String;

    .line 106
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 392
    return-void
.end method

.method public static getAltitude(FF)F
    .locals 8
    .param p0, "p0"    # F
    .param p1, "p"    # F

    .prologue
    .line 1434
    const v0, 0x3e42dcae

    .line 1435
    .local v0, "coef":F
    const v1, 0x472d2a00    # 44330.0f

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, p1, p0

    float-to-double v4, v3

    const-wide v6, 0x3fc85b95c0000000L    # 0.19029495120048523

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .locals 30
    .param p0, "angleChange"    # [F
    .param p1, "R"    # [F
    .param p2, "prevR"    # [F

    .prologue
    .line 1469
    const/4 v11, 0x0

    .local v11, "rd1":F
    const/4 v12, 0x0

    .local v12, "rd4":F
    const/4 v13, 0x0

    .local v13, "rd6":F
    const/4 v14, 0x0

    .local v14, "rd7":F
    const/4 v15, 0x0

    .line 1470
    .local v15, "rd8":F
    const/16 v16, 0x0

    .local v16, "ri0":F
    const/16 v17, 0x0

    .local v17, "ri1":F
    const/16 v18, 0x0

    .local v18, "ri2":F
    const/16 v19, 0x0

    .local v19, "ri3":F
    const/16 v20, 0x0

    .local v20, "ri4":F
    const/16 v21, 0x0

    .local v21, "ri5":F
    const/16 v22, 0x0

    .local v22, "ri6":F
    const/16 v23, 0x0

    .local v23, "ri7":F
    const/16 v24, 0x0

    .line 1471
    .local v24, "ri8":F
    const/4 v2, 0x0

    .local v2, "pri0":F
    const/4 v3, 0x0

    .local v3, "pri1":F
    const/4 v4, 0x0

    .local v4, "pri2":F
    const/4 v5, 0x0

    .local v5, "pri3":F
    const/4 v6, 0x0

    .local v6, "pri4":F
    const/4 v7, 0x0

    .local v7, "pri5":F
    const/4 v8, 0x0

    .local v8, "pri6":F
    const/4 v9, 0x0

    .local v9, "pri7":F
    const/4 v10, 0x0

    .line 1473
    .local v10, "pri8":F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 1474
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 1475
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 1476
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 1477
    const/16 v25, 0x3

    aget v19, p1, v25

    .line 1478
    const/16 v25, 0x4

    aget v20, p1, v25

    .line 1479
    const/16 v25, 0x5

    aget v21, p1, v25

    .line 1480
    const/16 v25, 0x6

    aget v22, p1, v25

    .line 1481
    const/16 v25, 0x7

    aget v23, p1, v25

    .line 1482
    const/16 v25, 0x8

    aget v24, p1, v25

    .line 1495
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 1496
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 1497
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 1498
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 1499
    const/16 v25, 0x3

    aget v5, p2, v25

    .line 1500
    const/16 v25, 0x4

    aget v6, p2, v25

    .line 1501
    const/16 v25, 0x5

    aget v7, p2, v25

    .line 1502
    const/16 v25, 0x6

    aget v8, p2, v25

    .line 1503
    const/16 v25, 0x7

    aget v9, p2, v25

    .line 1504
    const/16 v25, 0x8

    aget v10, p2, v25

    .line 1520
    :cond_1
    :goto_1
    mul-float v25, v2, v17

    mul-float v26, v5, v20

    add-float v25, v25, v26

    mul-float v26, v8, v23

    add-float v11, v25, v26

    .line 1521
    mul-float v25, v3, v17

    mul-float v26, v6, v20

    add-float v25, v25, v26

    mul-float v26, v9, v23

    add-float v12, v25, v26

    .line 1522
    mul-float v25, v4, v16

    mul-float v26, v7, v19

    add-float v25, v25, v26

    mul-float v26, v10, v22

    add-float v13, v25, v26

    .line 1523
    mul-float v25, v4, v17

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v10, v23

    add-float v14, v25, v26

    .line 1524
    mul-float v25, v4, v18

    mul-float v26, v7, v21

    add-float v25, v25, v26

    mul-float v26, v10, v24

    add-float v15, v25, v26

    .line 1526
    const/16 v25, 0x0

    float-to-double v0, v11

    move-wide/from16 v26, v0

    float-to-double v0, v12

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1527
    const/16 v25, 0x1

    neg-float v0, v14

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1528
    const/16 v25, 0x2

    neg-float v0, v13

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v15

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1530
    return-void

    .line 1483
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1484
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 1485
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 1486
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 1487
    const/16 v25, 0x4

    aget v19, p1, v25

    .line 1488
    const/16 v25, 0x5

    aget v20, p1, v25

    .line 1489
    const/16 v25, 0x6

    aget v21, p1, v25

    .line 1490
    const/16 v25, 0x8

    aget v22, p1, v25

    .line 1491
    const/16 v25, 0x9

    aget v23, p1, v25

    .line 1492
    const/16 v25, 0xa

    aget v24, p1, v25

    goto/16 :goto_0

    .line 1505
    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 1506
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 1507
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 1508
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 1509
    const/16 v25, 0x4

    aget v5, p2, v25

    .line 1510
    const/16 v25, 0x5

    aget v6, p2, v25

    .line 1511
    const/16 v25, 0x6

    aget v7, p2, v25

    .line 1512
    const/16 v25, 0x8

    aget v8, p2, v25

    .line 1513
    const/16 v25, 0x9

    aget v9, p2, v25

    .line 1514
    const/16 v25, 0xa

    aget v10, p2, v25

    goto/16 :goto_1
.end method

.method private static getDelay(I)I
    .locals 1
    .param p0, "rate"    # I

    .prologue
    .line 1788
    const/4 v0, -0x1

    .line 1789
    .local v0, "delay":I
    packed-switch p0, :pswitch_data_0

    .line 1803
    move v0, p0

    .line 1806
    :goto_0
    return v0

    .line 1791
    :pswitch_0
    const/4 v0, 0x0

    .line 1792
    goto :goto_0

    .line 1794
    :pswitch_1
    const/16 v0, 0x4e20

    .line 1795
    goto :goto_0

    .line 1797
    :pswitch_2
    const v0, 0x1046b

    .line 1798
    goto :goto_0

    .line 1800
    :pswitch_3
    const v0, 0x30d40

    .line 1801
    goto :goto_0

    .line 1789
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getInclination([F)F
    .locals 4
    .param p0, "I"    # [F

    .prologue
    const/4 v2, 0x5

    .line 1187
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1188
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .locals 3

    .prologue
    .line 1777
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1778
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v0, :cond_0

    .line 1779
    const-string v0, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    new-instance v0, Landroid/hardware/LegacySensorManager;

    invoke-direct {v0, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 1783
    :cond_0
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v1

    return-object v0

    .line 1784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getOrientation([F[F)[F
    .locals 9
    .param p0, "R"    # [F
    .param p1, "values"    # [F

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1391
    array-length v0, p0

    if-ne v0, v8, :cond_0

    .line 1392
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1393
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1394
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 1401
    :goto_0
    return-object p1

    .line 1396
    :cond_0
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1397
    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1398
    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_0
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 8
    .param p0, "Q"    # [F
    .param p1, "rv"    # [F

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1615
    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1616
    aget v0, p1, v7

    aput v0, p0, v4

    .line 1621
    :goto_0
    aget v0, p1, v4

    aput v0, p0, v5

    .line 1622
    aget v0, p1, v5

    aput v0, p0, v6

    .line 1623
    aget v0, p1, v6

    aput v0, p0, v7

    .line 1624
    return-void

    .line 1618
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    aget v2, p1, v4

    aget v3, p1, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v5

    aget v3, p1, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v6

    aget v3, p1, v6

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p0, v4

    .line 1619
    aget v1, p0, v4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    aget v0, p0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :cond_1
    aput v0, p0, v4

    goto :goto_0
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 30
    .param p0, "R"    # [F
    .param p1, "I"    # [F
    .param p2, "gravity"    # [F
    .param p3, "geomagnetic"    # [F

    .prologue
    .line 1102
    const/16 v23, 0x0

    aget v2, p2, v23

    .line 1103
    .local v2, "Ax":F
    const/16 v23, 0x1

    aget v3, p2, v23

    .line 1104
    .local v3, "Ay":F
    const/16 v23, 0x2

    aget v4, p2, v23

    .line 1106
    .local v4, "Az":F
    mul-float v23, v2, v2

    mul-float v24, v3, v3

    add-float v23, v23, v24

    mul-float v24, v4, v4

    add-float v21, v23, v24

    .line 1107
    .local v21, "normsqA":F
    const v16, 0x411cf5c3    # 9.81f

    .line 1108
    .local v16, "g":F
    const v15, 0x3f765d4b

    .line 1109
    .local v15, "freeFallGravitySquared":F
    const v23, 0x3f765d4b

    cmpg-float v23, v21, v23

    if-gez v23, :cond_0

    .line 1111
    const/16 v23, 0x0

    .line 1169
    :goto_0
    return v23

    .line 1114
    :cond_0
    const/16 v23, 0x0

    aget v5, p3, v23

    .line 1115
    .local v5, "Ex":F
    const/16 v23, 0x1

    aget v6, p3, v23

    .line 1116
    .local v6, "Ey":F
    const/16 v23, 0x2

    aget v7, p3, v23

    .line 1117
    .local v7, "Ez":F
    mul-float v23, v6, v4

    mul-float v24, v7, v3

    sub-float v8, v23, v24

    .line 1118
    .local v8, "Hx":F
    mul-float v23, v7, v2

    mul-float v24, v5, v4

    sub-float v9, v23, v24

    .line 1119
    .local v9, "Hy":F
    mul-float v23, v5, v3

    mul-float v24, v6, v2

    sub-float v10, v23, v24

    .line 1120
    .local v10, "Hz":F
    mul-float v23, v8, v8

    mul-float v24, v9, v9

    add-float v23, v23, v24

    mul-float v24, v10, v10

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v20, v0

    .line 1122
    .local v20, "normH":F
    const v23, 0x3dcccccd    # 0.1f

    cmpg-float v23, v20, v23

    if-gez v23, :cond_1

    .line 1125
    const/16 v23, 0x0

    goto :goto_0

    .line 1127
    :cond_1
    const/high16 v23, 0x3f800000    # 1.0f

    div-float v19, v23, v20

    .line 1128
    .local v19, "invH":F
    mul-float v8, v8, v19

    .line 1129
    mul-float v9, v9, v19

    .line 1130
    mul-float v10, v10, v19

    .line 1131
    const/high16 v23, 0x3f800000    # 1.0f

    mul-float v24, v2, v2

    mul-float v25, v3, v3

    add-float v24, v24, v25

    mul-float v25, v4, v4

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    div-float v17, v23, v24

    .line 1132
    .local v17, "invA":F
    mul-float v2, v2, v17

    .line 1133
    mul-float v3, v3, v17

    .line 1134
    mul-float v4, v4, v17

    .line 1135
    mul-float v23, v3, v10

    mul-float v24, v4, v9

    sub-float v11, v23, v24

    .line 1136
    .local v11, "Mx":F
    mul-float v23, v4, v8

    mul-float v24, v2, v10

    sub-float v12, v23, v24

    .line 1137
    .local v12, "My":F
    mul-float v23, v2, v9

    mul-float v24, v3, v8

    sub-float v13, v23, v24

    .line 1138
    .local v13, "Mz":F
    if-eqz p0, :cond_2

    .line 1139
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 1140
    const/16 v23, 0x0

    aput v8, p0, v23

    const/16 v23, 0x1

    aput v9, p0, v23

    const/16 v23, 0x2

    aput v10, p0, v23

    .line 1141
    const/16 v23, 0x3

    aput v11, p0, v23

    const/16 v23, 0x4

    aput v12, p0, v23

    const/16 v23, 0x5

    aput v13, p0, v23

    .line 1142
    const/16 v23, 0x6

    aput v2, p0, v23

    const/16 v23, 0x7

    aput v3, p0, v23

    const/16 v23, 0x8

    aput v4, p0, v23

    .line 1150
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 1154
    const/high16 v23, 0x3f800000    # 1.0f

    mul-float v24, v5, v5

    mul-float v25, v6, v6

    add-float v24, v24, v25

    mul-float v25, v7, v7

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    div-float v18, v23, v24

    .line 1155
    .local v18, "invE":F
    mul-float v23, v5, v11

    mul-float v24, v6, v12

    add-float v23, v23, v24

    mul-float v24, v7, v13

    add-float v23, v23, v24

    mul-float v14, v23, v18

    .line 1156
    .local v14, "c":F
    mul-float v23, v5, v2

    mul-float v24, v6, v3

    add-float v23, v23, v24

    mul-float v24, v7, v4

    add-float v23, v23, v24

    mul-float v22, v23, v18

    .line 1157
    .local v22, "s":F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 1158
    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, p1, v23

    const/16 v23, 0x1

    const/16 v24, 0x0

    aput v24, p1, v23

    const/16 v23, 0x2

    const/16 v24, 0x0

    aput v24, p1, v23

    .line 1159
    const/16 v23, 0x3

    const/16 v24, 0x0

    aput v24, p1, v23

    const/16 v23, 0x4

    aput v14, p1, v23

    const/16 v23, 0x5

    aput v22, p1, v23

    .line 1160
    const/16 v23, 0x6

    const/16 v24, 0x0

    aput v24, p1, v23

    const/16 v23, 0x7

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v24, v0

    aput v24, p1, v23

    const/16 v23, 0x8

    aput v14, p1, v23

    .line 1169
    .end local v14    # "c":F
    .end local v18    # "invE":F
    .end local v22    # "s":F
    :cond_3
    :goto_2
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 1143
    :cond_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 1144
    const/16 v23, 0x0

    aput v8, p0, v23

    const/16 v23, 0x1

    aput v9, p0, v23

    const/16 v23, 0x2

    aput v10, p0, v23

    const/16 v23, 0x3

    const/16 v24, 0x0

    aput v24, p0, v23

    .line 1145
    const/16 v23, 0x4

    aput v11, p0, v23

    const/16 v23, 0x5

    aput v12, p0, v23

    const/16 v23, 0x6

    aput v13, p0, v23

    const/16 v23, 0x7

    const/16 v24, 0x0

    aput v24, p0, v23

    .line 1146
    const/16 v23, 0x8

    aput v2, p0, v23

    const/16 v23, 0x9

    aput v3, p0, v23

    const/16 v23, 0xa

    aput v4, p0, v23

    const/16 v23, 0xb

    const/16 v24, 0x0

    aput v24, p0, v23

    .line 1147
    const/16 v23, 0xc

    const/16 v24, 0x0

    aput v24, p0, v23

    const/16 v23, 0xd

    const/16 v24, 0x0

    aput v24, p0, v23

    const/16 v23, 0xe

    const/16 v24, 0x0

    aput v24, p0, v23

    const/16 v23, 0xf

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, p0, v23

    goto/16 :goto_1

    .line 1161
    .restart local v14    # "c":F
    .restart local v18    # "invE":F
    .restart local v22    # "s":F
    :cond_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 1162
    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, p1, v23

    const/16 v23, 0x1

    const/16 v24, 0x0

    aput v24, p1, v23

    const/16 v23, 0x2

    const/16 v24, 0x0

    aput v24, p1, v23

    .line 1163
    const/16 v23, 0x4

    const/16 v24, 0x0

    aput v24, p1, v23

    const/16 v23, 0x5

    aput v14, p1, v23

    const/16 v23, 0x6

    aput v22, p1, v23

    .line 1164
    const/16 v23, 0x8

    const/16 v24, 0x0

    aput v24, p1, v23

    const/16 v23, 0x9

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v24, v0

    aput v24, p1, v23

    const/16 v23, 0xa

    aput v14, p1, v23

    .line 1165
    const/16 v23, 0x3

    const/16 v24, 0x7

    const/16 v25, 0xb

    const/16 v26, 0xc

    const/16 v27, 0xd

    const/16 v28, 0xe

    const/16 v29, 0x0

    aput v29, p1, v28

    aput v29, p1, v27

    aput v29, p1, v26

    aput v29, p1, v25

    aput v29, p1, v24

    aput v29, p1, v23

    .line 1166
    const/16 v23, 0xf

    const/high16 v24, 0x3f800000    # 1.0f

    aput v24, p1, v23

    goto/16 :goto_2
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 19
    .param p0, "R"    # [F
    .param p1, "rotationVector"    # [F

    .prologue
    .line 1554
    const/4 v15, 0x0

    aget v3, p1, v15

    .line 1555
    .local v3, "q1":F
    const/4 v15, 0x1

    aget v7, p1, v15

    .line 1556
    .local v7, "q2":F
    const/4 v15, 0x2

    aget v10, p1, v15

    .line 1558
    .local v10, "q3":F
    move-object/from16 v0, p1

    array-length v15, v0

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 1559
    const/4 v15, 0x3

    aget v2, p1, v15

    .line 1565
    .local v2, "q0":F
    :goto_0
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v12, v15, v3

    .line 1566
    .local v12, "sq_q1":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v13, v15, v7

    .line 1567
    .local v13, "sq_q2":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v10

    mul-float v14, v15, v10

    .line 1568
    .local v14, "sq_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v5, v15, v7

    .line 1569
    .local v5, "q1_q2":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v10

    mul-float v11, v15, v2

    .line 1570
    .local v11, "q3_q0":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v6, v15, v10

    .line 1571
    .local v6, "q1_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v8, v15, v2

    .line 1572
    .local v8, "q2_q0":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v9, v15, v10

    .line 1573
    .local v9, "q2_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v4, v15, v2

    .line 1575
    .local v4, "q1_q0":F
    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1576
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v13

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 1577
    const/4 v15, 0x1

    sub-float v16, v5, v11

    aput v16, p0, v15

    .line 1578
    const/4 v15, 0x2

    add-float v16, v6, v8

    aput v16, p0, v15

    .line 1580
    const/4 v15, 0x3

    add-float v16, v5, v11

    aput v16, p0, v15

    .line 1581
    const/4 v15, 0x4

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 1582
    const/4 v15, 0x5

    sub-float v16, v9, v4

    aput v16, p0, v15

    .line 1584
    const/4 v15, 0x6

    sub-float v16, v6, v8

    aput v16, p0, v15

    .line 1585
    const/4 v15, 0x7

    add-float v16, v9, v4

    aput v16, p0, v15

    .line 1586
    const/16 v15, 0x8

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v13

    aput v16, p0, v15

    .line 1606
    :cond_0
    :goto_1
    return-void

    .line 1561
    .end local v2    # "q0":F
    .end local v4    # "q1_q0":F
    .end local v5    # "q1_q2":F
    .end local v6    # "q1_q3":F
    .end local v8    # "q2_q0":F
    .end local v9    # "q2_q3":F
    .end local v11    # "q3_q0":F
    .end local v12    # "sq_q1":F
    .end local v13    # "sq_q2":F
    .end local v14    # "sq_q3":F
    :cond_1
    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v16, v3, v3

    sub-float v15, v15, v16

    mul-float v16, v7, v7

    sub-float v15, v15, v16

    mul-float v16, v10, v10

    sub-float v2, v15, v16

    .line 1562
    .restart local v2    # "q0":F
    const/4 v15, 0x0

    cmpl-float v15, v2, v15

    if-lez v15, :cond_2

    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v2, v0

    :goto_2
    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 1587
    .restart local v4    # "q1_q0":F
    .restart local v5    # "q1_q2":F
    .restart local v6    # "q1_q3":F
    .restart local v8    # "q2_q0":F
    .restart local v9    # "q2_q3":F
    .restart local v11    # "q3_q0":F
    .restart local v12    # "sq_q1":F
    .restart local v13    # "sq_q2":F
    .restart local v14    # "sq_q3":F
    :cond_3
    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1588
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v13

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 1589
    const/4 v15, 0x1

    sub-float v16, v5, v11

    aput v16, p0, v15

    .line 1590
    const/4 v15, 0x2

    add-float v16, v6, v8

    aput v16, p0, v15

    .line 1591
    const/4 v15, 0x3

    const/16 v16, 0x0

    aput v16, p0, v15

    .line 1593
    const/4 v15, 0x4

    add-float v16, v5, v11

    aput v16, p0, v15

    .line 1594
    const/4 v15, 0x5

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 1595
    const/4 v15, 0x6

    sub-float v16, v9, v4

    aput v16, p0, v15

    .line 1596
    const/4 v15, 0x7

    const/16 v16, 0x0

    aput v16, p0, v15

    .line 1598
    const/16 v15, 0x8

    sub-float v16, v6, v8

    aput v16, p0, v15

    .line 1599
    const/16 v15, 0x9

    add-float v16, v9, v4

    aput v16, p0, v15

    .line 1600
    const/16 v15, 0xa

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v13

    aput v16, p0, v15

    .line 1601
    const/16 v15, 0xb

    const/16 v16, 0x0

    aput v16, p0, v15

    .line 1603
    const/16 v15, 0xc

    const/16 v16, 0xd

    const/16 v17, 0xe

    const/16 v18, 0x0

    aput v18, p0, v17

    aput v18, p0, v16

    aput v18, p0, v15

    .line 1604
    const/16 v15, 0xf

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, p0, v15

    goto/16 :goto_1
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 4
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .prologue
    .line 1272
    if-ne p0, p3, :cond_2

    .line 1273
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 1274
    .local v2, "temp":[F
    monitor-enter v2

    .line 1276
    :try_start_0
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1277
    array-length v1, p3

    .line 1278
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1279
    aget v3, v2, v0

    aput v3, p3, v0

    .line 1278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1280
    :cond_0
    const/4 v3, 0x1

    monitor-exit v2

    .line 1284
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "temp":[F
    :goto_1
    return v3

    .line 1282
    .restart local v2    # "temp":[F
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    .end local v2    # "temp":[F
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    goto :goto_1

    .line 1282
    .restart local v2    # "temp":[F
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 22
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .prologue
    .line 1301
    move-object/from16 v0, p3

    array-length v6, v0

    .line 1302
    .local v6, "length":I
    move-object/from16 v0, p0

    array-length v15, v0

    if-eq v15, v6, :cond_0

    .line 1303
    const/4 v15, 0x0

    .line 1345
    :goto_0
    return v15

    .line 1304
    :cond_0
    and-int/lit8 v15, p1, 0x7c

    if-nez v15, :cond_1

    and-int/lit8 v15, p2, 0x7c

    if-eqz v15, :cond_2

    .line 1305
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 1306
    :cond_2
    and-int/lit8 v15, p1, 0x3

    if-eqz v15, :cond_3

    and-int/lit8 v15, p2, 0x3

    if-nez v15, :cond_4

    .line 1307
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 1308
    :cond_4
    and-int/lit8 v15, p1, 0x3

    and-int/lit8 v16, p2, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1309
    const/4 v15, 0x0

    goto :goto_0

    .line 1314
    :cond_5
    xor-int v1, p1, p2

    .line 1317
    .local v1, "Z":I
    and-int/lit8 v15, p1, 0x3

    add-int/lit8 v12, v15, -0x1

    .line 1318
    .local v12, "x":I
    and-int/lit8 v15, p2, 0x3

    add-int/lit8 v13, v15, -0x1

    .line 1319
    .local v13, "y":I
    and-int/lit8 v15, v1, 0x3

    add-int/lit8 v14, v15, -0x1

    .line 1322
    .local v14, "z":I
    add-int/lit8 v15, v14, 0x1

    rem-int/lit8 v2, v15, 0x3

    .line 1323
    .local v2, "axis_y":I
    add-int/lit8 v15, v14, 0x2

    rem-int/lit8 v3, v15, 0x3

    .line 1324
    .local v3, "axis_z":I
    xor-int v15, v12, v2

    xor-int v16, v13, v3

    or-int v15, v15, v16

    if-eqz v15, :cond_6

    .line 1325
    xor-int/lit16 v1, v1, 0x80

    .line 1327
    :cond_6
    const/16 v15, 0x80

    move/from16 v0, p1

    if-lt v0, v15, :cond_a

    const/4 v9, 0x1

    .line 1328
    .local v9, "sx":Z
    :goto_1
    const/16 v15, 0x80

    move/from16 v0, p2

    if-lt v0, v15, :cond_b

    const/4 v10, 0x1

    .line 1329
    .local v10, "sy":Z
    :goto_2
    const/16 v15, 0x80

    if-lt v1, v15, :cond_c

    const/4 v11, 0x1

    .line 1332
    .local v11, "sz":Z
    :goto_3
    const/16 v15, 0x10

    if-ne v6, v15, :cond_d

    const/4 v8, 0x4

    .line 1333
    .local v8, "rowLength":I
    :goto_4
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    const/4 v15, 0x3

    if-ge v5, v15, :cond_12

    .line 1334
    mul-int v7, v5, v8

    .line 1335
    .local v7, "offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    const/4 v15, 0x3

    if-ge v4, v15, :cond_11

    .line 1336
    if-ne v12, v4, :cond_7

    add-int v16, v7, v4

    if-eqz v9, :cond_e

    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    neg-float v15, v15

    :goto_7
    aput v15, p3, v16

    .line 1337
    :cond_7
    if-ne v13, v4, :cond_8

    add-int v16, v7, v4

    if-eqz v10, :cond_f

    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    neg-float v15, v15

    :goto_8
    aput v15, p3, v16

    .line 1338
    :cond_8
    if-ne v14, v4, :cond_9

    add-int v16, v7, v4

    if-eqz v11, :cond_10

    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    neg-float v15, v15

    :goto_9
    aput v15, p3, v16

    .line 1335
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1327
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "offset":I
    .end local v8    # "rowLength":I
    .end local v9    # "sx":Z
    .end local v10    # "sy":Z
    .end local v11    # "sz":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_1

    .line 1328
    .restart local v9    # "sx":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    .line 1329
    .restart local v10    # "sy":Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_3

    .line 1332
    .restart local v11    # "sz":Z
    :cond_d
    const/4 v8, 0x3

    goto :goto_4

    .line 1336
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "offset":I
    .restart local v8    # "rowLength":I
    :cond_e
    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    goto :goto_7

    .line 1337
    :cond_f
    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    goto :goto_8

    .line 1338
    :cond_10
    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    goto :goto_9

    .line 1333
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1341
    .end local v4    # "i":I
    .end local v7    # "offset":I
    :cond_12
    const/16 v15, 0x10

    if-ne v6, v15, :cond_13

    .line 1342
    const/4 v15, 0x3

    const/16 v16, 0x7

    const/16 v17, 0xb

    const/16 v18, 0xc

    const/16 v19, 0xd

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p3, v20

    aput v21, p3, v19

    aput v21, p3, v18

    aput v21, p3, v17

    aput v21, p3, v16

    aput v21, p3, v15

    .line 1343
    const/16 v15, 0xf

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, p3, v15

    .line 1345
    :cond_13
    const/4 v15, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    .line 415
    const/16 v4, 0x10

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 417
    .local v0, "hexArray":[C
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 419
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 420
    aget-byte v4, p1, v2

    and-int/lit16 v3, v4, 0xff

    .line 421
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x0

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 422
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    .end local v3    # "v":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 415
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 1678
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method protected checkStringInArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "checkString"    # Ljava/lang/String;
    .param p2, "targetStringList"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v2

    .line 435
    :cond_1
    if-eqz p2, :cond_0

    array-length v3, p2

    if-eqz v3, :cond_0

    .line 438
    array-length v1, p2

    .line 439
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 440
    aget-object v3, p2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    const/4 v2, 0x1

    goto :goto_0

    .line 439
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public flush(Landroid/hardware/SensorEventListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 959
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 568
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 569
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v3, 0x0

    .line 573
    .local v3, "wakeUpSensor":Z
    const/16 v4, 0x8

    if-eq p1, v4, :cond_0

    const/16 v4, 0x11

    if-eq p1, v4, :cond_0

    const/16 v4, 0x16

    if-eq p1, v4, :cond_0

    const/16 v4, 0x17

    if-eq p1, v4, :cond_0

    const/16 v4, 0x18

    if-eq p1, v4, :cond_0

    const/16 v4, 0x19

    if-eq p1, v4, :cond_0

    const/16 v4, 0x1a

    if-ne p1, v4, :cond_1

    .line 577
    :cond_0
    const/4 v3, 0x1

    .line 580
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 581
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v4

    if-ne v4, v3, :cond_2

    .line 583
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .locals 4
    .param p1, "type"    # I
    .param p2, "wakeUp"    # Z

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 614
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 615
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v3

    if-ne v3, p2, :cond_0

    .line 618
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected abstract getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 21
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v15

    .line 475
    .local v15, "preFullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v6, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v10, 0x0

    .line 477
    .local v10, "isSystemAppOrHMS":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 478
    .local v14, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 479
    .local v17, "uid":I
    const/4 v12, 0x0

    .line 482
    .local v12, "packageNames":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v18, "package"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 483
    .local v9, "ipm":Landroid/content/pm/IPackageManager;
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 484
    if-eqz v12, :cond_0

    array-length v0, v12

    move/from16 v18, v0

    if-lez v18, :cond_0

    .line 485
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 486
    aget-object v18, v12, v7

    const/16 v19, 0x40

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 487
    .local v13, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v13, :cond_6

    .line 488
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_3

    .line 489
    const/4 v10, 0x1

    .line 511
    .end local v7    # "i":I
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    if-nez v10, :cond_1

    .line 512
    const-string v18, "SensorManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "uid = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v9    # "ipm":Landroid/content/pm/IPackageManager;
    :cond_1
    :goto_2
    if-nez v10, :cond_7

    .line 521
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .line 522
    .local v7, "i":Landroid/hardware/Sensor;
    invoke-virtual {v7}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "hTC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 523
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 492
    .end local v8    # "i$":Ljava/util/Iterator;
    .local v7, "i":I
    .restart local v9    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v13    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_1
    const-string v18, "SHA-1"

    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 493
    .local v3, "d":Ljava/security/MessageDigest;
    if-eqz v3, :cond_4

    .line 494
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 495
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 496
    .local v4, "digest":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v16

    .line 498
    .local v16, "signature":Ljava/lang/String;
    sget-object v18, Landroid/hardware/SensorManager;->WHITE_SIGNATURE:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->checkStringInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 499
    const/4 v10, 0x1

    .line 500
    goto :goto_1

    .line 503
    .end local v4    # "digest":[B
    .end local v16    # "signature":Ljava/lang/String;
    :cond_4
    const-string v18, "SensorManager"

    const-string v19, "MessageDigest == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v3    # "d":Ljava/security/MessageDigest;
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 507
    :cond_6
    const-string v18, "SensorManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PackageInfo["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] == null and packageNames = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v12, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 514
    .end local v7    # "i":I
    .end local v9    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 515
    .local v5, "e":Ljava/lang/Exception;
    const-string v18, "SensorManager"

    const-string v19, "Exception occurs when checking system app or not"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 527
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    move-object v6, v15

    .line 531
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 532
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 533
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v11, :cond_a

    .line 534
    const/16 v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 535
    move-object v11, v6

    .line 543
    :cond_9
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 546
    :cond_a
    monitor-exit v19

    .line 547
    return-object v11

    .line 537
    :cond_b
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .line 539
    .local v7, "i":Landroid/hardware/Sensor;
    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_c

    .line 540
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 546
    .end local v7    # "i":Landroid/hardware/Sensor;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18
.end method

.method public getSensors()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public initDataInjection(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1711
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->initDataInjectionImpl(Z)Z

    move-result v0

    return v0
.end method

.method protected abstract initDataInjectionImpl(Z)Z
.end method

.method public injectSensorData(Landroid/hardware/Sensor;[FIJ)Z
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .prologue
    .line 1746
    if-nez p1, :cond_0

    .line 1747
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sensor cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1749
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->isDataInjectionSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1750
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sensor does not support data injection"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1752
    :cond_1
    if-nez p2, :cond_2

    .line 1753
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sensor data cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1755
    :cond_2
    const/16 v1, 0x17

    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    .line 1756
    .local v0, "expectedNumValues":I
    array-length v1, p2

    if-eq v1, v0, :cond_3

    .line 1757
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong number of values for sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1761
    :cond_3
    const/4 v1, -0x1

    if-lt p3, v1, :cond_4

    const/4 v1, 0x3

    if-le p3, v1, :cond_5

    .line 1762
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid sensor accuracy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1764
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gtz v1, :cond_6

    .line 1765
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative or zero sensor timestamp"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1767
    :cond_6
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z

    move-result v1

    return v1
.end method

.method protected abstract injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I

    .prologue
    .line 805
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxReportLatencyUs"    # I

    .prologue
    .line 862
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 863
    .local v3, "delay":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxReportLatencyUs"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 929
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 930
    .local v3, "delayUs":I
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x0

    .line 897
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .local v3, "delay":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v6, v5

    .line 898
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 639
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 667
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method protected abstract registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 1646
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    return v0
.end method

.method protected abstract requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 741
    if-nez p1, :cond_0

    .line 746
    :goto_0
    return-void

    .line 745
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 722
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 682
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 683
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 700
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 701
    return-void
.end method

.method protected abstract unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
