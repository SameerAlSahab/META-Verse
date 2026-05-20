.class public Lcom/example/reverseshell2/config;
.super Ljava/lang/Object;
.source "config.java"


# static fields
.field public static IP:Ljava/lang/String;

.field public static icon:Z

.field public static port:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IP_PLACEHOLDER"

    sput-object v0, Lcom/example/reverseshell2/config;->IP:Ljava/lang/String;

    const-string v0, "PORT_PLACEHOLDER"

    sput-object v0, Lcom/example/reverseshell2/config;->port:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/example/reverseshell2/config;->icon:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
