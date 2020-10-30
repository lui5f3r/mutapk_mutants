.class Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;
.super Ljava/lang/Object;
.source "MwAuthManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Field"
.end annotation


# instance fields
.field private help:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private optional:Z

.field private sensitive:Z

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method value()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;->value:Ljava/lang/String;

    return-object v0
.end method
