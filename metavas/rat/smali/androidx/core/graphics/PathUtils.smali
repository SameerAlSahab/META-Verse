.class public final Landroidx/core/graphics/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flatten(Landroid/graphics/Path;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            ")",
            "Ljava/util/Collection<",
            "Landroidx/core/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p0, v0}, Landroidx/core/graphics/PathUtils;->flatten(Landroid/graphics/Path;F)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static flatten(Landroid/graphics/Path;F)Ljava/util/Collection;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "F)",
            "Ljava/util/Collection<",
            "Landroidx/core/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v0

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_2

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v5, v5, 0x3

    aget v6, v0, v4

    add-int/lit8 v7, v4, 0x1

    aget v7, v0, v7

    add-int/lit8 v8, v4, 0x2

    aget v8, v0, v8

    aget v9, v0, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, v0, v10

    add-int/lit8 v11, v5, 0x2

    aget v11, v0, v11

    cmpl-float v12, v6, v9

    if-eqz v12, :cond_1

    cmpl-float v12, v7, v10

    if-nez v12, :cond_0

    cmpl-float v12, v8, v11

    if-eqz v12, :cond_1

    :cond_0
    new-instance v12, Landroidx/core/graphics/PathSegment;

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v12, v13, v9, v14, v6}, Landroidx/core/graphics/PathSegment;-><init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method
