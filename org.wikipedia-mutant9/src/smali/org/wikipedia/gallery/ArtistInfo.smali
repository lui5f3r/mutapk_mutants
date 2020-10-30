.class public Lorg/wikipedia/gallery/ArtistInfo;
.super Lorg/wikipedia/gallery/TextInfo;
.source "ArtistInfo.java"


# instance fields
.field private name:Ljava/lang/String;

.field private userPage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_page"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/wikipedia/gallery/TextInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/wikipedia/gallery/ArtistInfo;->name:Ljava/lang/String;

    return-object v0
.end method
