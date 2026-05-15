.class public final Landroidx/core/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 1

    const/16 v0, 0x63

    if-gt p0, v0, :cond_5

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-lt p3, v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x9

    if-gt p0, v0, :cond_4

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-lt p3, v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    add-int/lit8 v0, p1, 0x1

    return v0

    :cond_4
    :goto_1
    add-int/lit8 v0, p1, 0x2

    return v0

    :cond_5
    :goto_2
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 5

    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p3}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4

    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, v3, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 27

    move-wide/from16 v0, p0

    move/from16 v2, p2

    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_0

    new-array v3, v2, [C

    sput-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    :cond_0
    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    const/16 v4, 0x20

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_2

    const/4 v5, 0x0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ge v5, v2, :cond_1

    aput-char v4, v3, v5

    goto :goto_0

    :cond_1
    const/16 v4, 0x30

    aput-char v4, v3, v5

    add-int/lit8 v4, v5, 0x1

    return v4

    :cond_2
    cmp-long v7, v0, v5

    if-lez v7, :cond_3

    const/16 v5, 0x2b

    move v10, v5

    goto :goto_1

    :cond_3
    const/16 v5, 0x2d

    neg-long v0, v0

    move v10, v5

    :goto_1
    const-wide/16 v5, 0x3e8

    rem-long v7, v0, v5

    long-to-int v11, v7

    div-long v5, v0, v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x15180

    if-le v5, v9, :cond_4

    div-int v6, v5, v9

    mul-int v9, v9, v6

    sub-int/2addr v5, v9

    move v12, v6

    goto :goto_2

    :cond_4
    move v12, v6

    :goto_2
    const/16 v6, 0xe10

    if-le v5, v6, :cond_5

    div-int/lit16 v6, v5, 0xe10

    mul-int/lit16 v7, v6, 0xe10

    sub-int/2addr v5, v7

    move v13, v6

    goto :goto_3

    :cond_5
    move v13, v7

    :goto_3
    const/16 v6, 0x3c

    if-le v5, v6, :cond_6

    div-int/lit8 v6, v5, 0x3c

    mul-int/lit8 v7, v6, 0x3c

    sub-int/2addr v5, v7

    move v15, v5

    move v14, v6

    goto :goto_4

    :cond_6
    move v15, v5

    move v14, v8

    :goto_4
    const/4 v5, 0x0

    const/16 v16, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_b

    invoke-static {v12, v7, v8, v8}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v6

    if-lez v6, :cond_7

    const/4 v8, 0x1

    :cond_7
    invoke-static {v13, v7, v8, v9}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v6, v8

    if-lez v6, :cond_8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    invoke-static {v14, v7, v8, v9}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v6, v8

    if-lez v6, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    invoke-static {v15, v7, v8, v9}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v6, v8

    if-lez v6, :cond_a

    const/4 v8, 0x3

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    :goto_7
    invoke-static {v11, v9, v7, v8}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v6, v8

    :goto_8
    if-ge v6, v2, :cond_b

    aput-char v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_b
    aput-char v10, v3, v5

    add-int/lit8 v17, v5, 0x1

    move/from16 v8, v17

    if-eqz v2, :cond_c

    const/4 v4, 0x1

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    move/from16 v18, v4

    const/16 v6, 0x64

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v4, v3

    move v5, v12

    const/16 v21, 0x1

    move/from16 v7, v17

    move/from16 v22, v8

    const/16 v23, 0x0

    move/from16 v8, v19

    const/16 v19, 0x2

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    const/16 v6, 0x68

    move/from16 v8, v22

    if-eq v9, v8, :cond_d

    const/16 v17, 0x1

    goto :goto_a

    :cond_d
    const/16 v17, 0x0

    :goto_a
    if-eqz v18, :cond_e

    const/16 v20, 0x2

    goto :goto_b

    :cond_e
    const/16 v20, 0x0

    :goto_b
    move-object v4, v3

    move v5, v13

    move v7, v9

    move/from16 v24, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    const/16 v6, 0x6d

    move/from16 v8, v24

    if-eq v9, v8, :cond_f

    const/16 v17, 0x1

    goto :goto_c

    :cond_f
    const/16 v17, 0x0

    :goto_c
    if-eqz v18, :cond_10

    const/16 v20, 0x2

    goto :goto_d

    :cond_10
    const/16 v20, 0x0

    :goto_d
    move-object v4, v3

    move v5, v14

    move v7, v9

    move/from16 v25, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    const/16 v6, 0x73

    move/from16 v8, v25

    if-eq v9, v8, :cond_11

    goto :goto_e

    :cond_11
    const/16 v21, 0x0

    :goto_e
    if-eqz v18, :cond_12

    goto :goto_f

    :cond_12
    const/16 v19, 0x0

    :goto_f
    move-object v4, v3

    move v5, v15

    move v7, v9

    move/from16 v26, v8

    move/from16 v8, v21

    move/from16 v17, v9

    move/from16 v9, v19

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    const/16 v6, 0x6d

    const/4 v8, 0x1

    if-eqz v18, :cond_13

    move/from16 v7, v26

    if-eq v9, v7, :cond_14

    goto :goto_10

    :cond_13
    move/from16 v7, v26

    :cond_14
    const/16 v16, 0x0

    :goto_10
    move-object v4, v3

    move v5, v11

    move/from16 v17, v7

    move v7, v9

    move/from16 v19, v9

    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v4

    const/16 v5, 0x73

    aput-char v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    return v5
.end method

.method private static printField([CICIZI)I
    .locals 3

    if-nez p4, :cond_0

    if-lez p1, :cond_7

    :cond_0
    move v0, p3

    if-eqz p4, :cond_1

    const/4 v1, 0x3

    if-ge p5, v1, :cond_2

    :cond_1
    const/16 v1, 0x63

    if-le p1, v1, :cond_3

    :cond_2
    div-int/lit8 v1, p1, 0x64

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p1, v2

    :cond_3
    if-eqz p4, :cond_4

    const/4 v1, 0x2

    if-ge p5, v1, :cond_5

    :cond_4
    const/16 v1, 0x9

    if-gt p1, v1, :cond_5

    if-eq v0, p3, :cond_6

    :cond_5
    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v1, 0xa

    sub-int/2addr p1, v2

    :cond_6
    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, p3

    add-int/lit8 p3, p3, 0x1

    aput-char p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    :cond_7
    return p3
.end method
