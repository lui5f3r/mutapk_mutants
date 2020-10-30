.class Lorg/wikipedia/json/PostProcessingTypeAdapter$1;
.super Lcom/google/gson/TypeAdapter;
.source "PostProcessingTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/json/PostProcessingTypeAdapter;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/json/PostProcessingTypeAdapter;

.field final synthetic val$delegate:Lcom/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lorg/wikipedia/json/PostProcessingTypeAdapter;Lcom/google/gson/TypeAdapter;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lorg/wikipedia/json/PostProcessingTypeAdapter$1;->this$0:Lorg/wikipedia/json/PostProcessingTypeAdapter;

    iput-object p2, p0, Lorg/wikipedia/json/PostProcessingTypeAdapter$1;->val$delegate:Lcom/google/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/wikipedia/json/PostProcessingTypeAdapter$1;->val$delegate:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    instance-of v0, p1, Lorg/wikipedia/json/PostProcessingTypeAdapter$PostProcessable;

    if-eqz v0, :cond_0

    .line 28
    move-object v0, p1

    check-cast v0, Lorg/wikipedia/json/PostProcessingTypeAdapter$PostProcessable;

    invoke-interface {v0}, Lorg/wikipedia/json/PostProcessingTypeAdapter$PostProcessable;->postProcess()V

    :cond_0
    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/wikipedia/json/PostProcessingTypeAdapter$1;->val$delegate:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
