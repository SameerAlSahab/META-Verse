.class public Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
.source "ConstraintTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;,
        Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x0

.field private static final ALIGN_FULL:I = 0x3

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2


# instance fields
.field private mHorizontalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private mNumCols:I

.field private mNumRows:I

.field private mPadding:I

.field private mVerticalGrowth:Z

.field private mVerticalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private system:Landroidx/constraintlayout/solver/LinearSystem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    const/16 v0, 0x8

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    const/16 v0, 0x8

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    const/16 v0, 0x8

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    return-void
.end method

.method private setChildrenConnections()V
    .locals 15

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    rem-int v5, v1, v4

    div-int v4, v1, v4

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    instance-of v12, v9, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v12, :cond_0

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_1

    :cond_0
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    :goto_1
    iget v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    const/4 v13, 0x2

    if-eq v12, v13, :cond_2

    const/4 v13, 0x3

    if-eq v12, v13, :cond_1

    goto :goto_2

    :cond_1
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_2

    :cond_2
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_2

    :cond_3
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    nop

    :goto_2
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v10, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    instance-of v12, v11, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v12, :cond_4

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v11, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_3

    :cond_4
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v11, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    :goto_3
    nop

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private setHorizontalSlices()V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    move v0, v1

    move-object v2, p0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-ge v3, v4, :cond_1

    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;)V

    iput-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_0

    new-instance v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    invoke-virtual {v5, p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    float-to-int v6, v0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(I)V

    add-float/2addr v0, v1

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iput-object p0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_1
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    return-void
.end method

.method private setVerticalSlices()V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v0, p0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    move v1, v2

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-ge v3, v4, :cond_1

    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;)V

    iput-object v0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_0

    new-instance v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    invoke-virtual {v5, p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    float-to-int v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(I)V

    add-float/2addr v1, v2

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iput-object p0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_1
    iget-object v0, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    return-void
.end method

.method private updateDebugSolverNames()V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".VG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".HG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    nop

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    nop

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v3, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public computeGuidelinesPercentPositions()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativePercentPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativePercentPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public cycleColumnAlignment(I)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iput v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    goto :goto_0

    :cond_2
    iput v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    return-void
.end method

.method public getColumnAlignmentRepresentation(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "L"

    return-object v1

    :cond_0
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez v1, :cond_1

    const-string v1, "C"

    return-object v1

    :cond_1
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const-string v1, "F"

    return-object v1

    :cond_2
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v1, "R"

    return-object v1

    :cond_3
    const-string v1, "!"

    return-object v1
.end method

.method public getColumnsAlignmentRepresentation()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumCols()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "ConstraintTableLayout"

    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVerticalGrowth()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    return v0
.end method

.method public setColumnAlignment(II)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    :cond_0
    return-void
.end method

.method public setColumnAlignment(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x43

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    :cond_1
    const/16 v3, 0x46

    if-ne v2, v3, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x52

    if-ne v2, v3, :cond_3

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    return-void
.end method

.method public setNumCols(I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    :cond_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    :cond_0
    return-void
.end method

.method public setPadding(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    :cond_0
    return-void
.end method

.method public setTableDimensions()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    iget-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-nez v2, :cond_1

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setNumCols(I)V

    :cond_1
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    div-int v4, v1, v2

    mul-int v2, v2, v4

    if-ge v2, v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    sub-int/2addr v5, v3

    if-ne v2, v5, :cond_3

    return-void

    :cond_3
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    goto :goto_1

    :cond_4
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-nez v2, :cond_5

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setNumRows(I)V

    :cond_5
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    div-int v4, v1, v2

    mul-int v2, v2, v4

    if-ge v2, v1, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    sub-int/2addr v5, v3

    if-ne v2, v5, :cond_7

    return-void

    :cond_7
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    return-void
.end method

.method public setVerticalGrowth(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
