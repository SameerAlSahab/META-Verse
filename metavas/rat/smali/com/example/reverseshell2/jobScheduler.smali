.class public Lcom/example/reverseshell2/jobScheduler;
.super Landroid/app/job/JobService;
.source "jobScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "jobSchedulerTest"


# instance fields
.field private jobCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/reverseshell2/jobScheduler;->jobCancelled:Z

    return-void
.end method

.method private doBackgroundWork(Landroid/app/job/JobParameters;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/jobScheduler$1;

    invoke-direct {v1, p0, p1}, Lcom/example/reverseshell2/jobScheduler$1;-><init>(Lcom/example/reverseshell2/jobScheduler;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string v0, "jobSchedulerTest"

    const-string v1, "Job started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/example/reverseshell2/jobScheduler;->doBackgroundWork(Landroid/app/job/JobParameters;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string v0, "jobSchedulerTest"

    const-string v1, "Job cancelled before completion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/reverseshell2/jobScheduler;->jobCancelled:Z

    return v0
.end method
