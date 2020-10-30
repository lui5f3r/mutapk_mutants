.class Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;
.super Lorg/wikipedia/model/BaseModel;
.source "MwAuthManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Field;,
        Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;
    }
.end annotation


# instance fields
.field private requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method requests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo$Request;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwAuthManagerInfo;->requests:Ljava/util/List;

    return-object v0
.end method
