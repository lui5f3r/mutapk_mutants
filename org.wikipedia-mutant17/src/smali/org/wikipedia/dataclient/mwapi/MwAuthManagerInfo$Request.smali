.class Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;
.super Ljava/lang/Object;
.source "MwAuthManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Request"
.end annotation


# instance fields
.field private account:Ljava/lang/String;

.field private fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provider:Ljava/lang/String;

.field private required:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method fields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->fields:Ljava/util/Map;

    return-object v0
.end method

.method id()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;->id:Ljava/lang/String;

    return-object v0
.end method
