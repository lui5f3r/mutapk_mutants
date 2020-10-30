.class Lorg/wikipedia/edit/Edit$Captcha;
.super Ljava/lang/Object;
.source "Edit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/Edit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Captcha"
.end annotation


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method id()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/wikipedia/edit/Edit$Captcha;->id:Ljava/lang/String;

    return-object v0
.end method
