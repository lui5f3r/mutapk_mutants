.class public Lorg/wikipedia/gallery/ExtMetadata$Values;
.super Ljava/lang/Object;
.source "ExtMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/gallery/ExtMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Values"
.end annotation


# instance fields
.field private hidden:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field final synthetic this$0:Lorg/wikipedia/gallery/ExtMetadata;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/wikipedia/gallery/ExtMetadata;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/wikipedia/gallery/ExtMetadata$Values;->this$0:Lorg/wikipedia/gallery/ExtMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public source()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata$Values;->source:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    return-object v0
.end method
