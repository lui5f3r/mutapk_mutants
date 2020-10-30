.class public Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;
.super Ljava/lang/Object;
.source "SiteMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/SiteMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SiteInfo"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private localname:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lorg/wikipedia/dataclient/mwapi/SiteMatrix;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/mwapi/SiteMatrix;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->this$0:Lorg/wikipedia/dataclient/mwapi/SiteMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public code()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public localName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->localname:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->name:Ljava/lang/String;

    return-object v0
.end method
