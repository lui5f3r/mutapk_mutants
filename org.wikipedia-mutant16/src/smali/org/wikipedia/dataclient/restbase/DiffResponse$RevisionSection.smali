.class public Lorg/wikipedia/dataclient/restbase/DiffResponse$RevisionSection;
.super Ljava/lang/Object;
.source "DiffResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/restbase/DiffResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevisionSection"
.end annotation


# instance fields
.field private heading:Ljava/lang/String;

.field private level:I

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
