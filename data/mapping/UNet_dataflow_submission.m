Network UNet {
    Layer CONV1_1 {
        Type: CONV
        Dimensions { K: 64, C:1, R: 3, S: 3, Y: 572, X: 572 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(570,1) X';
            TemporalMap(570,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV1_2 {
        Type: CONV
        Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 570, X: 570 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            TemporalMap(32,32) K;
            TemporalMap(568,1) X';
            TemporalMap(568,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer CONV2_1 {
        Type: CONV
        Dimensions { K: 128, C: 64, R: 3, S: 3, Y: 284, X: 284 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(282,1) X';
            TemporalMap(282,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer CONV2_2 {
        Type: CONV
        Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 282, X: 282 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(280,1) X';
            TemporalMap(280,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer CONV3_1 {
        Type: CONV
        Dimensions { K: 256, C: 128, R: 3, S: 3, Y: 140, X: 140 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(138,1) X';
            TemporalMap(138,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }


    Layer CONV3_2 {
        Type: CONV
        Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 138, X: 138 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(136,1) X';
            TemporalMap(136,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(64, P);
            SpatialMap(1,1) K;
        }

    }

    Layer CONV4_1 {
        Type: CONV
        Dimensions { K: 512, C: 256, R: 3, S: 3, Y: 68, X: 68 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(66,1) X';
            TemporalMap(66,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }


    Layer CONV4_2 {
        Type: CONV
        Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 66, X: 66 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(64,1) X';
            TemporalMap(64,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer CONV5_1 {
        Type: CONV
        Dimensions { K: 1024, C: 512, R: 3, S: 3, Y: 32, X: 32 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) K;
            TemporalMap(8,8) C;
            TemporalMap(8,8) X';
            TemporalMap(4,4) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(8, P);
            SpatialMap(1,1) C;
        }

    }


    Layer CONV5_2 {
        Type: CONV
        Dimensions { K: 1024, C: 1024, R: 3, S: 3, Y: 30, X: 30 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) K;
            TemporalMap(8,8) C;
            TemporalMap(8,8) X';
            TemporalMap(4,4) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(8, P);
            SpatialMap(1,1) C;
        }

    }

    Layer TRCONV1 {
        Type: TRCONV
        Dimensions { K: 512, C: 1024, R: 2, S: 2, Y: 28, X: 28 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(56,1) X';
            TemporalMap(56,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }


    Layer CONV4_3 {
        Type: CONV
        Dimensions { K: 512, C: 1024, R: 3, S: 3, Y: 56, X: 56 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(54,1) X';
            TemporalMap(54,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer CONV4_4 {
        Type: CONV
        Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 54, X: 54 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(52,1) X';
            TemporalMap(52,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer TRCONV2 {
        Type: TRCONV
        Dimensions { K: 512, C: 512, R: 2, S: 2, Y: 52, X: 52 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(104,1) X';
            TemporalMap(104,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer CONV3_3 {
        Type: CONV
        Dimensions { K: 256, C: 512, R: 3, S: 3, Y: 104, X: 104 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(102,1) X';
            TemporalMap(102,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }


    Layer CONV3_4 {
        Type: CONV
        Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 102, X: 102 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(100,1) X';
            TemporalMap(100,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer TRCONV3 {
        Type: TRCONV
        Dimensions { K: 128, C: 256, R: 2, S: 2, Y: 100, X: 100 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(200,1) X';
            TemporalMap(200,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }


    Layer CONV2_3 {
        Type: CONV
        Dimensions { K: 128, C: 256, R: 3, S: 3, Y: 200, X: 200 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(198,1) X';
            TemporalMap(198,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer CONV2_4 {
        Type: CONV
        Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 198, X: 198 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(196,1) X';
            TemporalMap(196,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer TRCONV4 {
        Type: TRCONV
        Dimensions { K: 64, C: 128, R: 2, S: 2, Y: 196, X: 196 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(392,1) X';
            TemporalMap(392,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer CONV1_3 {
        Type: CONV
        Dimensions { K: 64, C: 128, R: 3, S: 3, Y: 392, X: 392 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(390,1) X';
            TemporalMap(390,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }


    Layer CONV1_4 {
        Type: CONV
        Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 390, X: 390 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(388,1) X';
            TemporalMap(388,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }

    }

    Layer CONV1_5 {
        Type: CONV
        Dimensions { K: 2, C: 64, R: 1, S: 1, Y: 388, X: 388 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(388,1) X';
            TemporalMap(388,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }
}

// Accelerator {
//  PE { NumPEs: 128; VectorWidth: 4; MultPrecision: INT8, AddPrecision: INT16 }
//  Buffer { GlobalL2: 2048, LocalL1: 64}
//  NoC {Bandwidth: 64; AvgLatency: 2}
// }


