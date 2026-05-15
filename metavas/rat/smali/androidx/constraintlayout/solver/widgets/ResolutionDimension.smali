.class public Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
.super Landroidx/constraintlayout/solver/widgets/ResolutionNode;
.source "ResolutionDimension.java"


# instance fields
.field value:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    return-void
.end method

.method public resolve(I)V
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    int-to-float v0, p1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->invalidate()V

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->didResolve()V

    :cond_2
    return-void
.end method
