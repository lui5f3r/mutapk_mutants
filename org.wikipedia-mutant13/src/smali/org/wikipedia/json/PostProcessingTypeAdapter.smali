.class public Lorg/wikipedia/json/PostProcessingTypeAdapter;
.super Ljava/lang/Object;
.source "PostProcessingTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/json/PostProcessingTypeAdapter$PostProcessable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 18
    invoke-virtual {p1, p0, p2}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    .line 20
    new-instance p2, Lorg/wikipedia/json/PostProcessingTypeAdapter$1;

    invoke-direct {p2, p0, p1}, Lorg/wikipedia/json/PostProcessingTypeAdapter$1;-><init>(Lorg/wikipedia/json/PostProcessingTypeAdapter;Lcom/google/gson/TypeAdapter;)V

    return-object p2
.end method
